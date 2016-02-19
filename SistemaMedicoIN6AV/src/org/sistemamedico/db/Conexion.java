package org.sistemamedico.db;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.sistemamedico.bean.Medicamento;
import org.sistemamedico.bean.Usuario;


public class Conexion {
	private SessionFactory sesion;
	private static Conexion instancia;
	public static synchronized Conexion getInstancia(){
		return (instancia==null)?new Conexion():instancia;
	}
	public Conexion(){
		try {
			sesion=new Configuration().configure().buildSessionFactory();
		} catch (Throwable e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public void closeSession()throws HibernateException {
        try {
            if (sesion.isClosed()==false | sesion.getCurrentSession().isOpen()) {
            	sesion.close();
            	sesion.getCurrentSession().close();
            }
        } catch (HibernateException ex) {
            throw new HibernateException(ex);
        }
    }

	@SuppressWarnings("unchecked")
	public List<Object> listar(String consulta){
		Session miSesion=sesion.getCurrentSession();
		List<Object> lista=null;
		miSesion.beginTransaction();
		lista=miSesion.createQuery(consulta).list();
		miSesion.getTransaction().commit();
		return lista;
	}
	public List<Object> autenticarUsuario(String nick,String contraseña){
		Session miSesion=sesion.getCurrentSession();
		List<Object> lista=null;
		miSesion.beginTransaction();
		lista = miSesion.createQuery("From Usuario u where u.nick='"+nick+"' and contraseña='"+contraseña+"'").list();
		miSesion.getTransaction().commit();
		return lista;
	}
	public Usuario autenticar(String nick,String contrasena) {
		Session miSesion = sesion.getCurrentSession();
		Usuario usuario = null;
		miSesion.beginTransaction();
		List listUsuario =  miSesion.createQuery("From Usuario u where u.nick='"+nick+"' and contraseña='"+contrasena+"'").list();
		if(!listUsuario.isEmpty())
		{
			usuario = (Usuario) listUsuario.get(0);
		} else {
			usuario = null;
		}
		miSesion.getTransaction().commit();
		return usuario;
	}
	public void agregar (Object agregar){
		Session session=sesion.getCurrentSession();
		session.beginTransaction();
		session.save(agregar);
		session.getTransaction().commit();	
	}
	public Object buscar(Class<?> clase,int id){
		Session session=sesion.getCurrentSession();
		session.beginTransaction();
		Object obj=session.get(clase, id);
		session.getTransaction().commit();
		return obj;
	}
	public Object buscar(Class<?> clase,String id){
		Session session=sesion.getCurrentSession();
		session.beginTransaction();
		Object obj=session.get(clase, id);
		session.getTransaction().commit();
		return obj;
	}
	public void eliminar(Object obj){
		Session session=sesion.getCurrentSession();
		session.beginTransaction();
		session.delete(obj);
		session.getTransaction().commit();
	}
}

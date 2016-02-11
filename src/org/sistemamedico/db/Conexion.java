package org.sistemamedico.db;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


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
	public List<Object> listar(String consulta){
		Session miSesion=sesion.getCurrentSession();
		List<Object> lista=null;
		miSesion.beginTransaction();
		lista=miSesion.createQuery(consulta).list();
		miSesion.getTransaction().commit();
		return lista;
	}
	public List<Object> autenticarUsuario(String nick,String contraseņa){
		Session miSesion=sesion.getCurrentSession();
		List<Object> lista=null;
		miSesion.beginTransaction();
		lista=miSesion.createQuery("From Usuario u where u.nick='"+nick+"' and contraseņa='"+contraseņa+"'").list();
		miSesion.getTransaction().commit();
		return lista;
	}
}

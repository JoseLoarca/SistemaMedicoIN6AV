package org.sistemamedico.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.sistemamedico.bean.Medicamento;
import org.sistemamedico.bean.Usuario;
import org.sistemamedico.db.Conexion;
@WebServlet("/AutenticarUsuario.do")
public class AutenticarUsuario extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher despachador=null;
		System.out.println("Sesión iniciada, bienvenido: " + req.getParameter("txtNick"));
		
		/*List<Object> usuarios=Conexion.getInstancia().autenticarUsuario(
				req.getParameter("txtNick"), req.getParameter("txtContraseña"));
		*/
		//Usuario usuario = Conexion.getInstancia().autenticar(req.getParameter("txtNick"), req.getParameter("txtContraseña"));
		
		/*if(usuarios!=null && usuarios.size()>0){
			despachador=req.getRequestDispatcher("sistemamedico/dashboard.jsp");
			HttpSession sesion=req.getSession(true);
			sesion.setAttribute("usuario", usuarios.get(0));
		}else{
			despachador=req.getRequestDispatcher("index.jsp");
			req.setAttribute("error", "Usuario/Contraseña inválidos.");
		}
		if(usuario != null){
			despachador=req.getRequestDispatcher("sistemamedico/dashboard.jsp");
			HttpSession sesion=req.getSession(true);
			sesion.setAttribute("usuario", usuario);
		}else{
			despachador=req.getRequestDispatcher("index.jsp");
			req.setAttribute("error", "Usuario/Contraseña inválidos.");
		}
		*/
		List medicamento = Conexion.getInstancia().listar("From Medicamento");
		for(Object obj: medicamento){
			Medicamento m = (Medicamento) obj;
			System.out.print(m.getNombre());
		}
		
		despachador.forward(req, resp);
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}
}

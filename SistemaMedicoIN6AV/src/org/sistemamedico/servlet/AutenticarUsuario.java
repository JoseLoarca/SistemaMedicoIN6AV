package org.sistemamedico.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.sistemamedico.bean.Usuario;
import org.sistemamedico.db.Conexion;

@WebServlet("/AutenticarUsuario.do")

public class AutenticarUsuario extends HttpServlet {
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher despachador=null;
		System.out.println("Hola Mundo!");
		System.out.println("NICK: " + req.getParameter("txtNick"));
		
		/*List<Object> usuarios=Conexion.getInstancia().autenticarUsuario(
				req.getParameter("txtNick"), req.getParameter("txtContraseña"));
		*/
		Usuario usuario = Conexion.getInstancia().autenticar(req.getParameter("txtNick"), req.getParameter("txtContraseña"));
		
		/*if(usuarios!=null && usuarios.size()>0){
			despachador=req.getRequestDispatcher("sistemamedico/dashboard.jsp");
			HttpSession sesion=req.getSession(true);
			sesion.setAttribute("usuario", usuarios.get(0));
		}else{
			despachador=req.getRequestDispatcher("index.jsp");
			req.setAttribute("error", "Usuario/Contraseña inválidos.");
		}*/
		if(usuario != null){
			if(usuario.getIdRol().getIdRol() == 1) {
				resp.sendRedirect("/SistemaMedicoIN6AV/sistemamedico/dashboard.jsp");
				HttpSession sesion = req.getSession(true);
				sesion.setAttribute("usuario", usuario);
				sesion.setAttribute("listaMedicamento", Conexion.getInstancia().listar("From Medicamento"));
			} else {
				despachador=req.getRequestDispatcher("public/dashboard.jsp");
				HttpSession sesion = req.getSession(true);
				sesion.setAttribute("usuario", usuario);
				sesion.setAttribute("listaMedicamento", Conexion.getInstancia().listar("From Medicamento"));
			}
			
		}else{
			despachador=req.getRequestDispatcher("index.jsp");
			req.setAttribute("error", "Usuario/Contraseña inválidos.");
		}
		
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}
}

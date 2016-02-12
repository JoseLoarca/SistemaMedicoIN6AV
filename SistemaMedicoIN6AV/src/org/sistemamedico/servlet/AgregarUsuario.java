package org.sistemamedico.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.sistemamedico.bean.Rol;
import org.sistemamedico.bean.Usuario;
import org.sistemamedico.db.Conexion;

@WebServlet("/AgregarUsuario.do")
public class AgregarUsuario extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		RequestDispatcher despachador = null;
		Usuario usuario = new Usuario (0,
				req.getParameter("txtNombre"),
				Integer.parseInt(req.getParameter("txtTelefono")),
				req.getParameter("txtCorreo"),
				req.getParameter("txtDireccion"),
				req.getParameter("txtNick"),
				req.getParameter("txtContraseña"),
				((Rol)Conexion.getInstancia().buscar(Rol.class, 2))
				);
		
		Conexion.getInstancia().agregar(usuario);
		despachador=req.getRequestDispatcher("/index.jsp");
		despachador.forward(req, resp );
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {

		doPost(req, resp);
	}

}

package org.sistemamedico.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.sistemamedico.bean.Cita;
import org.sistemamedico.bean.Enfermedad;
import org.sistemamedico.bean.Usuario;
import org.sistemamedico.db.Conexion;

@WebServlet("/AgregarCita.do")
public class AgregarCita extends HttpServlet{
	  protected void doPost (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
	    RequestDispatcher despachador = null;
	    Cita cita = new Cita (0,
	    		req.getParameter("txtFecha"),
	    		req.getParameter("txtHora"),
	    		((Usuario)Conexion.getInstancia().buscar(Usuario.class, 4)),
	    		req.getParameter("txtSintoma")
	    );
	    Conexion.getInstancia().agregar(cita);
	    /*despachador=req.getRequestDispatcher("/sistemamedico/citas.jsp");
		despachador.forward(req, resp );*/
	    
	    resp.sendRedirect("/PruebaCME/sistemamedico/citas.jsp");

	  }
	  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    doPost(req, resp);
	  }
}
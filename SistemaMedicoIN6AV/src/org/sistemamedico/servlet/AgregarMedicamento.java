package org.sistemamedico.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.sistemamedico.bean.Medicamento;
import org.sistemamedico.bean.Proveedor;
import org.sistemamedico.db.Conexion;

@WebServlet("/AgregarMedicamento.do")
public class AgregarMedicamento extends HttpServlet{
	protected void doPost (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		RequestDispatcher despachador = null;
		Medicamento medicamento = new Medicamento(0,
				req.getParameter("txtNombre"),
				Double.parseDouble(req.getParameter("txtPrecio")),
				req.getParameter("txtFechaVencimiento"),
				((Proveedor)Conexion.getInstancia().buscar(Proveedor.class, 1)),
				req.getParameter("txtDescripcion")
		);
		Conexion.getInstancia().agregar(medicamento);

		resp.sendRedirect("/PruebaCME/sistemamedico/agregarMed.jsp");
	} 
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		doPost(req, resp);
	}
}	
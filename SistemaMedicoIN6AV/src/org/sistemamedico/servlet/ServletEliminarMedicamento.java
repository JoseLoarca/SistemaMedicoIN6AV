package org.sistemamedico.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.sistemamedico.bean.Medicamento;
import org.sistemamedico.db.Conexion;

@WebServlet("/ServletEliminarMedicamento.do")
public class ServletEliminarMedicamento extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher despachador=null;
		Integer id=Integer.parseInt(req.getParameter("idMedicamento"));
		Conexion.getInstancia().eliminar(Conexion.getInstancia().buscar(Medicamento.class, id));
		despachador=req.getRequestDispatcher("ServletListarMedicamento.do");
		despachador.forward(req, resp);
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}
	
}

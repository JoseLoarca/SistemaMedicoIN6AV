package org.sistemamedico.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.sistemamedico.db.Conexion;

@WebServlet("/ServletListarMedicamento.do")
public class ServletListarMedicamento extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher despachador = null;
		req.setAttribute("listaMedicamento", Conexion.getInstancia().listar("From Medicamento"));
		despachador = req.getRequestDispatcher("sistemamedico/farmacia.jsp");
		despachador.forward(req, resp);
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}
}

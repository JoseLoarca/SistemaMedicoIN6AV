package org.sistemamedico.db;

import java.util.List;

import org.sistemamedico.bean.Medicamento;

public class Principal {

	public static void main(String[] args) {
			Conexion conexion = Conexion.getInstancia();
			List listar = conexion.listar("From Medicamento");
			System.out.print("Lista de for");
			for(Object obj: listar){
				Medicamento medicamento = (Medicamento) obj;
				System.out.print(medicamento.getNombre());
			}
		}

	}

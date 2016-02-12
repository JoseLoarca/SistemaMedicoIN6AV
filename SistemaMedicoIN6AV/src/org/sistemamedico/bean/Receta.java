package org.sistemamedico.bean;

public class Receta {
	private Integer idReceta;
	private String nombre;
	private Medicamento idMedicamento;
	public Integer getIdReceta() {
		return idReceta;
	}
	public void setIdReceta(Integer idReceta) {
		this.idReceta = idReceta;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public Medicamento getIdMedicamento() {
		return idMedicamento;
	}
	public void setIdMedicamento(Medicamento idMedicamento) {
		this.idMedicamento = idMedicamento;
	}
	public Receta(Integer idReceta, String nombre, Medicamento idMedicamento) {
		super();
		this.idReceta = idReceta;
		this.nombre = nombre;
		this.idMedicamento = idMedicamento;
	}
	public Receta() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}

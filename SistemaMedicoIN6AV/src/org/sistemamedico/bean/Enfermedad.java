package org.sistemamedico.bean;

public class Enfermedad {
	private Integer idEnfermedad;
	private String nombre;
	private String cura;
	private Receta idReceta;
	public Integer getIdEnfermedad() {
		return idEnfermedad;
	}
	public void setIdEnfermedad(Integer idEnfermedad) {
		this.idEnfermedad = idEnfermedad;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getCura() {
		return cura;
	}
	public void setCura(String cura) {
		this.cura = cura;
	}
	public Receta getIdReceta() {
		return idReceta;
	}
	public void setIdReceta(Receta idReceta) {
		this.idReceta = idReceta;
	}
	public Enfermedad(Integer idEnfermedad, String nombre, String cura, Receta idReceta) {
		super();
		this.idEnfermedad = idEnfermedad;
		this.nombre = nombre;
		this.cura = cura;
		this.idReceta = idReceta;
	}
	public Enfermedad() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}

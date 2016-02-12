package org.sistemamedico.bean;

import java.util.Date;

public class Cita {
	private Integer idCita;
	private Date fecha;
	private String hora;
	private Usuario idUsuario;
	private Enfermedad idEnfermedad;
	public Integer getIdCita() {
		return idCita;
	}
	public void setIdCita(Integer idCita) {
		this.idCita = idCita;
	}
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	public String getHora() {
		return hora;
	}
	public void setHora(String hora) {
		this.hora = hora;
	}
	public Usuario getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(Usuario idUsuario) {
		this.idUsuario = idUsuario;
	}
	public Enfermedad getIdEnfermedad() {
		return idEnfermedad;
	}
	public void setIdEnfermedad(Enfermedad idEnfermedad) {
		this.idEnfermedad = idEnfermedad;
	}
	public Cita(Integer idCita, Date fecha, String hora, Usuario idUsuario, Enfermedad idEnfermedad) {
		super();
		this.idCita = idCita;
		this.fecha = fecha;
		this.hora = hora;
		this.idUsuario = idUsuario;
		this.idEnfermedad = idEnfermedad;
	}
	public Cita() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}

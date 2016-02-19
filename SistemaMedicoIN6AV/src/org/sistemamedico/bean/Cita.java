package org.sistemamedico.bean;


public class Cita {
	private Integer idCita;
	private String fecha;
	private String hora;
	private Usuario idUsuario;
	private String sintoma;
	public Integer getIdCita() {
		return idCita;
	}
	public void setIdCita(Integer idCita) {
		this.idCita = idCita;
	}
	public String getFecha() {
		return fecha;
	}
	public void setFecha(String fecha) {
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
	public String getSintoma(){
		return sintoma;
	}
	public void setSintoma(String sintoma){
		this.sintoma=sintoma;
	}
	public Cita(Integer idCita, String fecha, String hora, Usuario idUsuario, String sintoma) {
		super();
		this.idCita = idCita;
		this.fecha = fecha;
		this.hora = hora;
		this.idUsuario = idUsuario;
		this.sintoma = sintoma;
	}
	public Cita() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}

package org.sistemamedico.bean;

public class Usuario {
	private Integer idUsuario;
	private String nombre;
	private Integer telefono;
	private String correo;
	private String direccion;
	private String nick;
	private String contraseña;
	private Rol idRol;
	public Integer getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(Integer idUsuario) {
		this.idUsuario = idUsuario;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public Integer getTelefono() {
		return telefono;
	}
	public void setTelefono(Integer telefono) {
		this.telefono = telefono;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getContraseña() {
		return contraseña;
	}
	public void setContraseña(String contraseña) {
		this.contraseña = contraseña;
	}
	public Rol getIdRol() {
		return idRol;
	}
	public void setIdRol(Rol idRol) {
		this.idRol = idRol;
	}
	public Usuario(Integer idUsuario, String nombre, Integer telefono, String correo, String direccion, String nick,
			String contraseña, Rol idRol) {
		super();
		this.idUsuario = idUsuario;
		this.nombre = nombre;
		this.telefono = telefono;
		this.correo = correo;
		this.direccion = direccion;
		this.nick = nick;
		this.contraseña = contraseña;
		this.idRol = idRol;
	}
	public Usuario() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}

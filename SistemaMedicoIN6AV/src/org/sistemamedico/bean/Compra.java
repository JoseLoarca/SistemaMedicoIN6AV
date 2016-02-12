package org.sistemamedico.bean;

import java.util.Date;

public class Compra {
	private Integer IdCompra;
	private String nombre;
	private Integer cantidad;
	private Date fecha;
	private Usuario idUsuario;
	public Integer getIdCompra() {
		return IdCompra;
	}
	public void setIdCompra(Integer idCompra) {
		IdCompra = idCompra;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public Integer getCantidad() {
		return cantidad;
	}
	public void setCantidad(Integer cantidad) {
		this.cantidad = cantidad;
	}
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	public Usuario getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(Usuario idUsuario) {
		this.idUsuario = idUsuario;
	}
	public Compra(Integer idCompra, String nombre, Integer cantidad, Date fecha, Usuario idUsuario) {
		super();
		IdCompra = idCompra;
		this.nombre = nombre;
		this.cantidad = cantidad;
		this.fecha = fecha;
		this.idUsuario = idUsuario;
	}
	public Compra() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}

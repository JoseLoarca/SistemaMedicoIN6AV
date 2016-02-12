package org.sistemamedico.bean;

public class Proveedor {
	private Integer idProveedor;
	private String nombre;
	private String direccion;
	private Integer telefono;
	private Stock idStock;
	public Integer getIdProveedor() {
		return idProveedor;
	}
	public void setIdProveedor(Integer idProveedor) {
		this.idProveedor = idProveedor;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public Integer getTelefono() {
		return telefono;
	}
	public void setTelefono(Integer telefono) {
		this.telefono = telefono;
	}
	public Stock getIdStock() {
		return idStock;
	}
	public void setIdStock(Stock idStock) {
		this.idStock = idStock;
	}
	public Proveedor(Integer idProveedor, String nombre, String direccion, Integer telefono, Stock idStock) {
		super();
		this.idProveedor = idProveedor;
		this.nombre = nombre;
		this.direccion = direccion;
		this.telefono = telefono;
		this.idStock = idStock;
	}
	public Proveedor() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}

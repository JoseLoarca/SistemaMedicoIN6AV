package org.sistemamedico.bean;

import java.util.Date;

public class Medicamento {
	private Integer idMedicamento;
	private String nombre;
	private Double precio;
	private Date fechaVencimiento;
	private Proveedor idProveedor;
	public Integer getIdMedicamento() {
		return idMedicamento;
	}
	public void setIdMedicamento(Integer idMedicamento) {
		this.idMedicamento = idMedicamento;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public Double getPrecio() {
		return precio;
	}
	public void setPrecio(Double precio) {
		this.precio = precio;
	}
	public Date getFechaVencimiento() {
		return fechaVencimiento;
	}
	public void setFechaVencimiento(Date fechaVencimiento) {
		this.fechaVencimiento = fechaVencimiento;
	}
	public Proveedor getIdProveedor() {
		return idProveedor;
	}
	public void setIdProveedor(Proveedor idProveedor) {
		this.idProveedor = idProveedor;
	}
	public Medicamento(Integer idMedicamento, String nombre, Double precio, Date fechaVencimiento,
			Proveedor idProveedor) {
		super();
		this.idMedicamento = idMedicamento;
		this.nombre = nombre;
		this.precio = precio;
		this.fechaVencimiento = fechaVencimiento;
		this.idProveedor = idProveedor;
	}
	public Medicamento() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}

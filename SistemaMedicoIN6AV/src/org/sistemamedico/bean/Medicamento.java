package org.sistemamedico.bean;

public class Medicamento {
	private Integer idMedicamento;
	private String nombre;
	private Double precio;
	private String fechaVencimiento;
	private Proveedor idProveedor;
	private String descripcion;
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
	public String getFechaVencimiento() {
		return fechaVencimiento;
	}
	public void setFechaVencimiento(String fechaVencimiento) {
		this.fechaVencimiento = fechaVencimiento;
	}
	public Proveedor getIdProveedor() {
		return idProveedor;
	}
	public void setIdProveedor(Proveedor idProveedor) {
		this.idProveedor = idProveedor;
	}
	public String getDescripcion(){
		return descripcion;
	}
	public void setDescripcion(String descripcion){
		this.descripcion = descripcion;
	}
	public Medicamento(Integer idMedicamento, String nombre, Double precio, String fechaVencimiento,
			Proveedor idProveedor, String descripcion) {
		super();
		this.idMedicamento = idMedicamento;
		this.nombre = nombre;
		this.precio = precio;
		this.fechaVencimiento = fechaVencimiento;
		this.idProveedor = idProveedor;
		this.descripcion = descripcion;
	}
	public Medicamento() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}

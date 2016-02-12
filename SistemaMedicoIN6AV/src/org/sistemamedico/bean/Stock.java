package org.sistemamedico.bean;

public class Stock {
	private Integer idStock;
	private Medicamento idMedicamento;
	private Compra idCompra;
	public Integer getIdStock() {
		return idStock;
	}
	public void setIdStock(Integer idStock) {
		this.idStock = idStock;
	}
	public Medicamento getIdMedicamento() {
		return idMedicamento;
	}
	public void setIdMedicamento(Medicamento idMedicamento) {
		this.idMedicamento = idMedicamento;
	}
	public Compra getIdCompra() {
		return idCompra;
	}
	public void setIdCompra(Compra idCompra) {
		this.idCompra = idCompra;
	}
	public Stock(Integer idStock, Medicamento idMedicamento, Compra idCompra) {
		super();
		this.idStock = idStock;
		this.idMedicamento = idMedicamento;
		this.idCompra = idCompra;
	}
	public Stock() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}

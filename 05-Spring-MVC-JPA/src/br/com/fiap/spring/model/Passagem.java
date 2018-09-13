package br.com.fiap.spring.model;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="T_PASSAGEM")
@SequenceGenerator(name="passagem", allocationSize=1)
public class Passagem {

	@Id
	@GeneratedValue(generator="passagem", strategy=GenerationType.SEQUENCE)
	private int codigo;
	
	@Column(name="ds_destino", nullable=false)
	private String destino;
	
	@Column(name="ds_origem", nullable=false)
	private String origem;
	
	@Column(name="dt_passagem", nullable=false)
	private Calendar data;
	
	@Column(name="st_checkIn", nullable=false)
	private boolean checkIn; // false no cadastro
	
	@Column(name="st_bagagem")
	private boolean bagagem;
	
	@Column(name="vl_passagem", nullable=false)
	private double valor;

	public Passagem() {
		super();
	}

	
	public Passagem(int codigo, String destino, String origem, Calendar data, boolean checkIn, boolean bagagem,
			double valor) {
		super();
		this.codigo = codigo;
		this.destino = destino;
		this.origem = origem;
		this.data = data;
		this.checkIn = checkIn;
		this.bagagem = bagagem;
		this.valor = valor;
	}



	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getDestino() {
		return destino;
	}

	public void setDestino(String destino) {
		this.destino = destino;
	}

	public String getOrigem() {
		return origem;
	}

	public void setOrigem(String origem) {
		this.origem = origem;
	}

	public Calendar getData() {
		return data;
	}

	public void setData(Calendar data) {
		this.data = data;
	}

	public boolean isCheckIn() {
		return checkIn;
	}

	public void setCheckIn(boolean checkIn) {
		this.checkIn = checkIn;
	}

	public boolean isBagagem() {
		return bagagem;
	}

	public void setBagagem(boolean bagagem) {
		this.bagagem = bagagem;
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}
	
}

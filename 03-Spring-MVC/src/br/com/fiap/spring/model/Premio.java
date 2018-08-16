package br.com.fiap.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="T_PREMIO")
@SequenceGenerator(name="premio", sequenceName="SQ_T_PREMIO", allocationSize=1)
public class Premio {

	@Id
	@Column(name="cd_premio")
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="premio")
	private int id;
	
	@Column(name="nm_premio", nullable=false)
	private String nome;
	
	@Column(name="ds_classificacao")
	private String classificacao;
	
	@Column(name="valor")
	private double valor;
	
	@Column(name="st_medalha")
	private boolean medalha;
	
	public Premio() {
		super();
	}

	public Premio(int id, String nome, String classificacao, double valor, boolean medalha) {
		super();
		this.id = id;
		this.nome = nome;
		this.classificacao = classificacao;
		this.valor = valor;
		this.medalha = medalha;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getClassificacao() {
		return classificacao;
	}

	public void setClassificacao(String classificacao) {
		this.classificacao = classificacao;
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}

	public boolean isMedalha() {
		return medalha;
	}

	public void setMedalha(boolean medalha) {
		this.medalha = medalha;
	}
	
	
}

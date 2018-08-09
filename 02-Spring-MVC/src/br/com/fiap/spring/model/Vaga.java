package br.com.fiap.spring.model;

public class Vaga {

	private String titulo;
	private double salario;
	private boolean beneficios;
	private String regime;
	private String descricao;
	
	public Vaga() {
		super();
	}

	public Vaga(String titulo, double salario, boolean beneficios, String regime, String descricao) {
		super();
		this.titulo = titulo;
		this.salario = salario;
		this.beneficios = beneficios;
		this.regime = regime;
		this.descricao = descricao;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public double getSalario() {
		return salario;
	}

	public void setSalario(double salario) {
		this.salario = salario;
	}

	public boolean isBeneficios() {
		return beneficios;
	}

	public void setBeneficios(boolean beneficios) {
		this.beneficios = beneficios;
	}

	public String getRegime() {
		return regime;
	}

	public void setRegime(String regime) {
		this.regime = regime;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	
}

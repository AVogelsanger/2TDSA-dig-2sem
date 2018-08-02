package br.com.fiap.spring.model;

public class Aluno {

	private String nome;
	
	private int idade;
	
	private boolean aprovado;
	
	private boolean bolsista;

	public Aluno() {
		super();
	}

	public Aluno(String nome, int idade, boolean aprovado, boolean bolsista) {
		super();
		this.nome = nome;
		this.idade = idade;
		this.aprovado = aprovado;
		this.bolsista = bolsista;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public int getIdade() {
		return idade;
	}

	public void setIdade(int idade) {
		this.idade = idade;
	}

	public boolean isBolsista() {
		return bolsista;
	}

	public void setBolsista(boolean bolsista) {
		this.bolsista = bolsista;
	}

	public boolean isAprovado() {
		return aprovado;
	}

	public void setAprovado(boolean aprovado) {
		this.aprovado = aprovado;
	}
	
	
}

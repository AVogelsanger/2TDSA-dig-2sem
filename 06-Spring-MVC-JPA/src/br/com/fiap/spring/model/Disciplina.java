package br.com.fiap.spring.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@SequenceGenerator(name="disciplina", allocationSize=1)
public class Disciplina {

	@Id
	@GeneratedValue(generator="disciplina", strategy=GenerationType.SEQUENCE)
	private int codigo;
	
	@Size(min= 3)
	@NotBlank(message="O nome é obrigatório.")
	private String nome;
	
	@OneToMany(mappedBy="disciplina")
	private List<Prova> provas;
	
	public Disciplina() {
		
	}
	
	public Disciplina(String nome, List<Prova> provas) {
		super();
		this.nome = nome;
		this.provas = provas;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	
	
}

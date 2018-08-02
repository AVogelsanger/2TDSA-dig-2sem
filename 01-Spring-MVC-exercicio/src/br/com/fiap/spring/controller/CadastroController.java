package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.spring.model.Aluno;

@Controller
@RequestMapping("/cadastro")
public class CadastroController {

	@GetMapping("aluno")
	public String abrirCadastro() {
		return "cadastro/aluno";
	}
	
	@PostMapping("aluno")
	public ModelAndView cadastrarForm(Aluno a) {
		
		System.out.println(a.getNome() + a.getIdade() + a.isAprovado() + a.isBolsista());
		ModelAndView retorno = new ModelAndView("cadastro/aluno");
		retorno.addObject("Aluno", a);
		
		return retorno;
	}
}

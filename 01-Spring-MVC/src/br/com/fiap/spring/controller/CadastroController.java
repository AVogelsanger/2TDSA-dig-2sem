package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.spring.model.Carro;

@Controller
@RequestMapping("/cadastro")
public class CadastroController {

	@GetMapping("carro")
	public String abrirCadastro() {
		return "cadastro/carro";
	}
	
	@PostMapping("carro")
	public ModelAndView cadastrarForm(Carro c) {
		
		System.out.println(c.getMarca() + c.getModelo() + c.getAno() + c.isImportado() + c.isBlindado());
		
		ModelAndView retorno = new ModelAndView("cadastro/carro");
		retorno.addObject("Carro", c);
		
		return retorno;
	}
}

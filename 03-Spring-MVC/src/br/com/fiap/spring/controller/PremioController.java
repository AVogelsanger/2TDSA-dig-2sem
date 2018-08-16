package br.com.fiap.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.spring.dao.PremioDAO;
import br.com.fiap.spring.model.Premio;

@Controller
@RequestMapping("premio")
public class PremioController {
	
	@Autowired
	private PremioDAO dao;

	@GetMapping("cadastrar") // link 
	public String abrirForm() {
		return "premio/premioForm";
	}
	
	@Transactional
	@PostMapping("cadastrar") // action do formulário
	public ModelAndView processarForm(Premio premio) {
		
		dao.cadastrar(premio);
		
		return new ModelAndView("premio/premioForm").addObject("msg", "Prêmio registrado!");
	}
	
}

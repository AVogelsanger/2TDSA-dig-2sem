package br.com.fiap.spring.controller;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fiap.spring.dao.PassagemDAO;
import br.com.fiap.spring.model.Passagem;

@Controller
@RequestMapping("passagem")
public class PassagemController {

	@Autowired
	private PassagemDAO dao;
	
	@GetMapping("pesquisar")
	public ModelAndView pesquisar(String origem, String destino, Date data) {
		Calendar dataCerta = new GregorianCalendar();
		dataCerta.setTime(data);
		return new ModelAndView("passagem/lista").addObject("passagem", dao.buscarPor(origem, destino, dataCerta));
	}
	
	
	@GetMapping("listar")
	public ModelAndView listar() {
		return new ModelAndView("passagem/lista").addObject("passagem", dao.listar());
	}
	
	
	@GetMapping("cadastrar")
	public String abrirForm(Passagem passagem) {
		return "passagem/cadastrar";
	}
	
	@Transactional
	@PostMapping("cadastrar")
	public String processarForm(Passagem passagem, RedirectAttributes r) {
		dao.cadastrar(passagem);
		r.addFlashAttribute("msg","Passagem registrada!");
		return "redirect:/passagem/cadastrar";
	}
	
	
}
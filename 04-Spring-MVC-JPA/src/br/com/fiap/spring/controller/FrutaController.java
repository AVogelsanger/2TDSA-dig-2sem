package br.com.fiap.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fiap.spring.dao.FrutaDAO;
import br.com.fiap.spring.model.Fruta;

@Controller
@RequestMapping("fruta")
public class FrutaController {

	@Autowired
	private FrutaDAO dao;
	
	
	@Transactional
	@PostMapping("editar")
	public String processarEdicao(Fruta fruta, RedirectAttributes r) {
		dao.atualizar(fruta);
		r.addFlashAttribute("msg", "Fruta atualizada");
		return "redirect:/fruta/listar";
	}
	
	@GetMapping("editar/{codigo}")
	public ModelAndView abrirEdicao(@PathVariable("codigo") int id) {
		return new ModelAndView("fruta/edicao").addObject("fruta", dao.buscar(id));
	}
	
	
	@GetMapping("listar")
	public ModelAndView abrirListagem() {
		//adiciona a lista de frutas para a p�gina JSP
		return new ModelAndView("fruta/lista").addObject("frutas", dao.listar());
	}
	
	@GetMapping("cadastrar")
	public String abrirForm() {
		return "fruta/frutaForm";
	}
	
	@Transactional
	@PostMapping("cadastrar")
	public ModelAndView processarForm(Fruta fruta, RedirectAttributes r) {
		
		dao.cadastrar(fruta);
		r.addFlashAttribute("msg", "Fruta cadastrada!");
		//redirect redireciona para uma URL
		return new ModelAndView("redirect:/fruta/cadastrar");
	}
}

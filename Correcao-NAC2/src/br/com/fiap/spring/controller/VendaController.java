package br.com.fiap.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fiap.spring.dao.VendaDAO;
import br.com.fiap.spring.model.Venda;

@Controller
@RequestMapping("venda")
public class VendaController {

	@Autowired
	private VendaDAO dao;
	
	@Transactional
	@PostMapping("pagar")
	public String pagar(int codigo) {
		dao.pagar(codigo);
		return "redirect:/venda/listar";
	}
	
	@GetMapping("pesquisar")
	public ModelAndView pesquisar(String nome) {
		return new ModelAndView("venda/lista").addObject("vendas", dao.buscarPorCliente(nome));
	}
	
	
	@GetMapping("listar")
	public ModelAndView abrirLista() {
		return new ModelAndView("venda/lista").addObject("vendas", dao.listar());
	}
	
	
	@GetMapping("cadastrar")
	public String abrirCadastro(Venda venda) {
		return "venda/cadastro";
	}
	
	
	@PostMapping("cadastrar")
	@Transactional
	public String processarCadastro(Venda venda, RedirectAttributes r) {
		dao.cadastrar(venda);
		r.addFlashAttribute("msg", "Venda cadastrado!");
		return "redirect:/venda/cadastrar";
	}
}

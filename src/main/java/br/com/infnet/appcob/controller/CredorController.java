package br.com.infnet.appcob.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.infnet.appcob.model.negocio.Credor;
import br.com.infnet.appcob.model.service.CredorService;

@Controller
public class CredorController {

	@Autowired 
	private CredorService credorService;
	
	@RequestMapping(value = "/credores", method = RequestMethod.GET)
	public String showInit(
			Model model
			) {
		
		model.addAttribute("credores", credorService.obterLista());
		
		return "credor/lista";
	}
	
	@RequestMapping(value = "/credores/cadastro", method = RequestMethod.GET)
	public String cadastra() {
		return "credor/detalhe";
	}
	
	@RequestMapping(value = "/credores/cadastro/{id}", method = RequestMethod.GET)
	public String altera(
			Model model,
			@PathVariable Integer id
			) {
		
		Credor credor = credorService.obterPorId(id);
		model.addAttribute("credor", credor);
		
		return "credor/detalhe";
	}
	
	@RequestMapping(value = "/credores/incluir", method = RequestMethod.POST)
	public String incluir(
				Model model,
				Credor credor
			) {
		
		credorService.incluir(credor);
		
		return showInit(model);
	}

	
	@RequestMapping(value = "/credores/excluir/{id}", method = RequestMethod.GET)
	public String excluir(
			Model model,
			@PathVariable Integer id
			) {
		
		//Credor credor = credorService.obterPorId(id);
		
		credorService.excluir(id);

		return showInit(model);
	}
}

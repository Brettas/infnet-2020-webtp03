package br.com.infnet.appcob.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.infnet.appcob.model.negocio.Devedor;
import br.com.infnet.appcob.model.service.CredorService;
import br.com.infnet.appcob.model.service.DevedorService;

@Controller
public class DevedoresController {
	
	@Autowired private DevedorService devedorService;
	@Autowired private CredorService credorService;
	
	@RequestMapping(value = "/devedores", method = RequestMethod.GET)
	public String showInit(
			Model model
			) {
		
		model.addAttribute("devedores", devedorService.obterLista());		
		
		return "devedor/lista";
	}
	
	@RequestMapping(value = "/devedores/cadastro", method = RequestMethod.GET)
	public String cadastra(
			Model model
			) {
		
		model.addAttribute("credores", credorService.obterLista());
		
		return "devedor/detalhe";
	}
	
	@RequestMapping(value = "/devedores/cadastro/{id}", method = RequestMethod.GET)
	public String altera(
			Model model,
			@PathVariable Integer id
			) {
		
		model.addAttribute("credores", credorService.obterLista());
		
		Devedor devedor = devedorService.obterPorId(id);
		model.addAttribute("devedor", devedor);
		
		return "devedor/detalhe";
	}
	
	@RequestMapping(value = "/devedores/incluir", method = RequestMethod.POST)
	public String incluir(
				Model model,
				Devedor devedor
			) {
		
		devedorService.incluir(devedor);
		
		return showInit(model);
	}

	
	@RequestMapping(value = "/devedores/excluir/{id}", method = RequestMethod.GET)
	public String excluir(
			Model model,
			@PathVariable Integer id
			) {
		
		devedorService.excluir(id);

		return showInit(model);
	}

}

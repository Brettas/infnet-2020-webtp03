package br.com.infnet.appcob.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.infnet.appcob.model.negocio.Usuario;
import br.com.infnet.appcob.model.service.UsuarioService;

@Controller
public class UsuarioController {
	
	@Autowired 
	private UsuarioService usuarioService;

	@RequestMapping(value = "/usuario", method = RequestMethod.POST)
	public String incluir(
				Model model,
				Usuario usuario
			) {
		
		usuarioService.incluir(usuario);
		
		return "login";
	}	
	
	@RequestMapping(value = "/usuarios", method = RequestMethod.GET)
	public String showInit(
			Model model
			) {
		
		model.addAttribute("usuarios", usuarioService.obterLista());
		
		return "usuario/lista";
	}
}
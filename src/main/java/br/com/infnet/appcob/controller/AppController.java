package br.com.infnet.appcob.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import br.com.infnet.appcob.model.negocio.Devedor;
import br.com.infnet.appcob.model.negocio.Usuario;
import br.com.infnet.appcob.model.service.CredorService;
import br.com.infnet.appcob.model.service.DebitoService;
import br.com.infnet.appcob.model.service.DevedorService;
import br.com.infnet.appcob.model.service.UsuarioService;

@Controller
@SessionAttributes("user")
public class AppController {

	@Autowired  private UsuarioService usuarioService;	
	@Autowired  private CredorService credorService;
	@Autowired private DevedorService devedorService;
	@Autowired private DebitoService debitoService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String showInit() {
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showLogin() {
		return this.showInit();
	}
	
	@RequestMapping(value = "/consulta", method = RequestMethod.GET)
	public String showConsulta() {
		return "/consulta";
	}	
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String showHome(
				Model model,
				@RequestParam String login,
				@RequestParam String senha
			) {

		Usuario usuario = usuarioService.userExist(login);
		
		if(usuario == null) {
			return "usuario/detalhe";
			
		}else if (!usuarioService.isValid(login, senha)) {
			model.addAttribute("mensagem", "Credenciais inválidas: " + login);
			return "login";
			
		}  else {
			model.addAttribute("user", usuario);
			return "redirect:/inicio";
		}		
	}
	
	@RequestMapping(value = "/loginconsulta", method = RequestMethod.POST)
	public String showHomeDebitos(
				Model model,
				@RequestParam String cpf
			) {

		Devedor devedor = devedorService.devedorExist(cpf);
		
		if (devedor != null) {
			return "redirect:/devedores/debitos_consulta/"+devedor.getId();
		}else {
			return "consulta";
		}		
	}
	
	@RequestMapping(value = "/voltar", method = RequestMethod.GET) 
	public String voltar() {		
		return this.showInit();
	}
	
	@RequestMapping(value = "/sair", method = RequestMethod.GET)
	public String sair(SessionStatus session) {
		
		session.setComplete();		
		
		return "login";
	}
	
	@RequestMapping(value = "/inicio", method = RequestMethod.GET)
	public String inicio(
			Model model
			) {		
		
		model.addAttribute("credores", credorService.obterAtivos());
		model.addAttribute("devedores", devedorService.obterLista());
		model.addAttribute("debitos", debitoService.obterQtdeAbertos());
		
		model.addAttribute("saldo", debitoService.obterSaldo());
		
		return "principal";
	}
}
package br.com.infnet.appcob.model.clients;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.com.infnet.appcob.model.negocio.Credor;

@FeignClient(url = "http://localhost:8081/api/credor", name = "credorClient")
public interface ICredorClient {

	@GetMapping(value = "/lista")
	public List<Credor> obterLista();
	
	@GetMapping(value = "/ativos")
	public List<Credor> obterAtivos();
	
	@GetMapping(value = "/{id}")
	public Credor obterPorId(@PathVariable Integer id);

	@PostMapping(value = "/incluir")
	public void incluir(Credor credor);
	
	@DeleteMapping(value = "/{id}/excluir")
	public void excluir(@PathVariable Integer id);
	
	@GetMapping(value = "/{id}/alterar")
	public void alterar(@PathVariable Integer id);
}

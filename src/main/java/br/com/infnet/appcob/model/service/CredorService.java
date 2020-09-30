package br.com.infnet.appcob.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.infnet.appcob.model.clients.ICredorClient;
import br.com.infnet.appcob.model.negocio.Credor;

@Service
public class CredorService {
	
	//utilizando API
	
	@Autowired private ICredorClient credorClient;
	
	public void incluir(Credor credor) {
		credorClient.incluir(credor);
	}
	
	public void excluir(Integer id) {
		credorClient.excluir(id);
	}
	
	public List<Credor> obterLista(){ 
		return credorClient.obterLista();
	}
	
	public Credor obterPorId(Integer id) {
		return credorClient.obterPorId(id);
	}
	
	public List<Credor> obterAtivos(){ 
		return credorClient.obterAtivos();
	}
	
}

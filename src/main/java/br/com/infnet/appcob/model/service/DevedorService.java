package br.com.infnet.appcob.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import br.com.infnet.appcob.model.negocio.Devedor;
import br.com.infnet.appcob.model.repository.IDevedorRepository;

@Service
public class DevedorService {

	@Autowired
	private IDevedorRepository devedorRepository;
	
	public void incluir(Devedor devedor) {
		devedorRepository.save(devedor);
	}
	
	public void excluir(Integer id) {
		devedorRepository.deleteById(id);
	}
	
	public List<Devedor> obterListaPorNome(String nome){ 
		return devedorRepository.findByNome(nome);
	}
	
	public List<Devedor> obterLista(){ 
		return devedorRepository.findAll(Sort.by(Sort.Direction.ASC, "nome"));
	}
	
	
	public Devedor obterPorId(Integer id) {
		return devedorRepository.findById(id).orElse(new Devedor(0));
	}
	
	public Devedor devedorExist(String cpf) {
		return devedorRepository.findByCpf(cpf);
	}
}

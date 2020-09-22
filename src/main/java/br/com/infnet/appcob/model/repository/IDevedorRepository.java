package br.com.infnet.appcob.model.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.com.infnet.appcob.model.negocio.Devedor;

@Repository
public interface IDevedorRepository extends CrudRepository<Devedor, Integer>{

	Devedor findByCpf(String cpf);
	
	List<Devedor> findAll(Sort by);
	
	List<Devedor> findByNome(String nome);
	
}

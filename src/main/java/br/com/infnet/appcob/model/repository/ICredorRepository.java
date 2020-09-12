package br.com.infnet.appcob.model.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.com.infnet.appcob.model.negocio.Credor;

@Repository
public interface ICredorRepository extends CrudRepository<Credor, Integer> {

	List<Credor> findAll(Sort by);
}

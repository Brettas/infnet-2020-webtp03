package br.com.infnet.appcob.model.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import br.com.infnet.appcob.model.negocio.Debito;

@Repository
public interface IDebitoRepository extends CrudRepository<Debito, Integer>{

	@Query("from Debito d where d.devedor.id =:devedor order by d.numero DESC")
	List<Debito> obterListaPorDevedor(@Param("devedor") Integer devedor);
}

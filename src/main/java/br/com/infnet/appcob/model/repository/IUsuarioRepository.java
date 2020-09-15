package br.com.infnet.appcob.model.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import br.com.infnet.appcob.model.negocio.Usuario;

@Repository
public interface IUsuarioRepository extends CrudRepository<Usuario, Integer> {
	
	@Query("from Usuario u where u.login =:login and u.senha =:senha")
	Usuario autenticacao(@Param("login") String login, @Param("senha") String senha);
	
	Usuario findByLogin(String login);
	
	List<Usuario> findAll(Sort by);
}
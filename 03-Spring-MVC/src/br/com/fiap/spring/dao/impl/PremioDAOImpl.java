package br.com.fiap.spring.dao.impl;

import org.springframework.stereotype.Repository;

import br.com.fiap.spring.dao.PremioDAO;
import br.com.fiap.spring.model.Premio;

@Repository
public class PremioDAOImpl extends GenericDAOImpl<Premio, Integer> implements PremioDAO{

}

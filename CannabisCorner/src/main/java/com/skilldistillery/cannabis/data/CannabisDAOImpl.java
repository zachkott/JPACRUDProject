package com.skilldistillery.cannabis.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.cannabis.entities.Cannabis;

@Service
@Transactional
public class CannabisDAOImpl implements CannabisDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Cannabis findById(int id) {

		return em.find(Cannabis.class, id);
	}

	@Override
	public List<Cannabis> findAll() {
		String jpql = "SELECT c FROM Cannabis c";
		return em.createQuery(jpql, Cannabis.class).getResultList();
	}

}

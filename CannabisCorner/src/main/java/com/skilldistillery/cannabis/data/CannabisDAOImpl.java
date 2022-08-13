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

	public static void main(String[] args) {
		CannabisDAOImpl crudTest = new CannabisDAOImpl();
		Cannabis budTest = new Cannabis("test", "indica", 20.0, 0.3, "uplifting", "best  bud in the world");
		crudTest.create(budTest);

	}

	@Override
	public Cannabis findById(int id) {

		return em.find(Cannabis.class, id);
	}

	@Override
	public List<Cannabis> findAll() {
		String jpql = "SELECT c FROM Cannabis c";
		return em.createQuery(jpql, Cannabis.class).getResultList();
	}

	@Override
	public Cannabis create(Cannabis cannabis) {

		em.persist(cannabis);

		return cannabis;
	}

	@Override
	public boolean delete(int id) {
		Cannabis budToBeDeleted = em.find(Cannabis.class, id);
		boolean successfulKickOut = false;

		if (budToBeDeleted != null) {

			em.remove(budToBeDeleted);

		}
		successfulKickOut = !em.contains(budToBeDeleted);

		return successfulKickOut;
	}

}

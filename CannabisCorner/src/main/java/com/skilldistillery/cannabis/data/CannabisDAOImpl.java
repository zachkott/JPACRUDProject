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

	@Override
	public Cannabis create(Cannabis cannabis) {

		em.persist(cannabis);

		return cannabis;
	}

	@Override
	public Cannabis delete(int id) {
		Cannabis budToBeDeleted = em.find(Cannabis.class, id);

		em.remove(budToBeDeleted);

		return budToBeDeleted;
	}

	@Override
	public Cannabis update(int id, Cannabis bud) {
		Cannabis updatedBud = em.find(Cannabis.class, id);

		updatedBud.setName(bud.getName());
		updatedBud.setStrain(bud.getStrain());
		updatedBud.setThcPercent(bud.getThcPercent());
		updatedBud.setCbdPercent(bud.getCbdPercent());
		updatedBud.setEffects(bud.getEffects());
		updatedBud.setCommonUsage(bud.getCommonUsage());
		updatedBud.setOrigin(bud.getOrigin());
		updatedBud.setLineage(bud.getLineage());
		updatedBud.setDescription(bud.getDescription());

		return updatedBud;
	} 

}

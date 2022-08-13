package com.skilldistillery.cannabis.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class CannabisTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Cannabis cannabis;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPACannabis");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		cannabis = em.find(Cannabis.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		cannabis = null;
	}

	@Test
	void test_Cannabis_entity_mapping() {
		assertNotNull(cannabis);
		assertEquals("Sativa", cannabis.getStrain());
		assertEquals("Blue Dream", cannabis.getName());
	}

}

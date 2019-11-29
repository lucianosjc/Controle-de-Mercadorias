package model;

import java.util.Properties;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;



public class ServicoEntityManager {

	protected static EntityManager entityManager;

	public static EntityManager getEntityManager() {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("estoque"); 
																							
																							
		if (entityManager == null) {
			entityManager = factory.createEntityManager();
		}

		return entityManager;
	}
}
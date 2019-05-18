package com.cat.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cat.spring.entity.Peserta;

@Repository
public class PesertaDAOImpl implements PesertaDAO {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public List<Peserta> getPeserta() {
		
		// get the current hibernate session
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		// create a query
		Query<Peserta> theQuery = 
				currentSession.createQuery("from Peserta", Peserta.class);
		
		// execute query and get result list
		List<Peserta> pesertas = theQuery.getResultList();
		
		// return the results
		return pesertas;
	}

}

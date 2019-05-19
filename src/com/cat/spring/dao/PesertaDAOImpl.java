package com.cat.spring.dao;

import java.util.List;

import javax.validation.Valid;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cat.spring.entity.Peserta;

@Repository
public class PesertaDAOImpl implements PesertaDAO {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
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

	@Override
	public void save(@Valid Peserta pesertaObject) {
		
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save the peserta
		currentSession.saveOrUpdate(pesertaObject);
		
	}

	@Override
	public Peserta getPeserta(int noId) {

		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// now retrieve/read from database using primary key
		Peserta peserta = currentSession.get(Peserta.class, noId);
		
		return peserta;
	}

}

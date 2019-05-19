package com.cat.spring.dao;

import java.util.List;

import javax.validation.Valid;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cat.spring.entity.Soal;

@Repository
public class SoalDAOImpl implements SoalDAO {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public List<Soal> getSoal() {
		
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// create a query
		Query<Soal> theQuery = 
				currentSession.createQuery("from Soal", Soal.class);
		
		// execute query and get result list
		List<Soal> soals = theQuery.getResultList();
		
		// return the results
		return soals;
	}

	@Override
	public void storeSoal2(@Valid Soal soalObject) {
		
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save the soal
		currentSession.save(soalObject);
		
	}

}

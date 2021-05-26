package com.kanchanak.springcrud.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kanchanak.springcrud.entity.Aluminus;

@Repository
public class AluminusDAOImpl implements AluminusDAO {

	//need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	
	
	@Override
	@Transactional
	public List<Aluminus> getAlumini() {
		
		//get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		//create a query
		Query<Aluminus> theQuery = currentSession.createQuery("from Aluminus", Aluminus.class );
		
		//execute query and get result list
		List<Aluminus> alumini = theQuery.getResultList();
		
		//return the results
		return alumini;
	}

}

package com.cat.spring.service;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cat.spring.dao.PesertaDAO;
import com.cat.spring.entity.Peserta;

@Service
public class PesertaServiceImpl implements PesertaService {

	// need to inject peserta DAO
	@Autowired
	private PesertaDAO pesertaDAO;
	
	@Override
	@Transactional
	public List<Peserta> getPeserta() {
		// TODO Auto-generated method stub
		return pesertaDAO.getPeserta();
	}

	@Override
	@Transactional
	public void save(@Valid Peserta pesertaObject) {
		// TODO Auto-generated method stub
		
		pesertaDAO.save(pesertaObject);
		
	}

	@Override
	@Transactional
	public Peserta getPeserta(int noId) {
		// TODO Auto-generated method stub
		return pesertaDAO.getPeserta(noId);
	}

	@Override
	@Transactional
	public void delete(int noId) {
		 
		pesertaDAO.delete(noId);
		
	}

}

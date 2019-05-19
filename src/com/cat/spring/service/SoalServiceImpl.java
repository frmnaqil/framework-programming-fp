package com.cat.spring.service;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cat.spring.dao.SoalDAO;
import com.cat.spring.entity.Soal;

@Service
public class SoalServiceImpl implements SoalService {

	// need to inject soal DAO
	@Autowired
	private SoalDAO soalDAO;
	
	@Override
	@Transactional
	public List<Soal> getSoal() {
		// TODO Auto-generated method stub
		return soalDAO.getSoal();
	}

	@Override
	@Transactional
	public void save(@Valid Soal soalObject) {
		// TODO Auto-generated method stub
		
		soalDAO.save(soalObject);
		
	}

	@Override
	@Transactional
	public Soal getSoal(int noId) {
		// TODO Auto-generated method stub
		return soalDAO.getSoal(noId);
	}

}

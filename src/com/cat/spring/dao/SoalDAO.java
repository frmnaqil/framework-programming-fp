package com.cat.spring.dao;

import java.util.List;

import javax.validation.Valid;

import com.cat.spring.entity.Soal;

public interface SoalDAO {
	
	public List<Soal> getSoal();

	public void save(@Valid Soal soalObject);

	public Soal getSoal(int noId);

}

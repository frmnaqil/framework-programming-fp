package com.cat.spring.service;

import java.util.List;

import javax.validation.Valid;

import com.cat.spring.entity.Soal;

public interface SoalService {

	public List<Soal> getSoal();

	public void save(@Valid Soal soalObject);

	public Soal getSoal(int noId);
	
}

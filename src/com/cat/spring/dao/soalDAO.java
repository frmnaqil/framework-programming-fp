package com.cat.spring.dao;

import java.util.List;

import javax.validation.Valid;

import com.cat.spring.entity.Soal;

public interface soalDAO {
	
	public List<Soal> getSoal();

	public void storeSoal2(@Valid Soal soalObject);

}

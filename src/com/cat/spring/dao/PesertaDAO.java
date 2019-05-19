package com.cat.spring.dao;

import java.util.List;

import javax.validation.Valid;

import com.cat.spring.entity.Peserta;

public interface PesertaDAO {
	
	public List<Peserta> getPeserta();

	public void storePeserta2(@Valid Peserta pesertaObject);

}

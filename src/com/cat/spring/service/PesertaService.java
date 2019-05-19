package com.cat.spring.service;

import java.util.List;

import javax.validation.Valid;

import com.cat.spring.entity.Peserta;

public interface PesertaService {

	public List<Peserta> getPeserta();

	public void storePeserta2(@Valid Peserta pesertaObject);
	
}

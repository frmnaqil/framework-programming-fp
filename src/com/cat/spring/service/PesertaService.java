package com.cat.spring.service;

import java.util.List;

import javax.validation.Valid;

import com.cat.spring.entity.Peserta;

public interface PesertaService {

	public List<Peserta> getPeserta();

	public void save(@Valid Peserta pesertaObject);

	public Peserta getPeserta(int noId);

	public void delete(int noId);
	
}

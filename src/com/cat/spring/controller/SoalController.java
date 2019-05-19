package com.cat.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cat.spring.dao.SoalDAO;
import com.cat.spring.entity.Soal;

@Controller
@RequestMapping("/soal")
public class SoalController {
	
	// need to inject the Peserta DAO
	@Autowired
	private SoalDAO soalDAO;
	
	@RequestMapping("/indexSoal")
	public String indexSoal(Model theModel) {
		
		// get Soal from DAO
		List<Soal> soalObject = soalDAO.getSoal();
		
		// Add the Soal to the Model
		theModel.addAttribute("soals", soalObject);
		
		return "indexSoal";
	}
	
	@RequestMapping("/tambahSoal")
	public String tambahSoal(Model theModel) {
		
		return "tambahSoal";
	}
	
	@RequestMapping("/ubahSoal")
	public String ubahSoal(Model theModel) {
		
		// get Peserta from DAO
		//List<Peserta> pesertaObject = pesertaDAO.getPeserta();
		
		// Add the Peserta to the Model
		//theModel.addAttribute("pesertas", pesertaObject);
		
		return "ubahSoal";
	}

}

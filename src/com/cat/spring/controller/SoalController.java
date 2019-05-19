package com.cat.spring.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cat.spring.entity.Peserta;

@Controller
@RequestMapping("/soal")
public class SoalController {
	
	@RequestMapping("/indexSoal")
	public String indexSoal(Model theModel) {
		
		// get Peserta from DAO
		//List<Peserta> pesertaObject = pesertaDAO.getPeserta();
		
		// Add the Peserta to the Model
		//theModel.addAttribute("pesertas", pesertaObject);
		
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

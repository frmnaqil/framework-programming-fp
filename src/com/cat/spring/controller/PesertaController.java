package com.cat.spring.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cat.spring.dao.PesertaDAO;
import com.cat.spring.entity.Peserta;

@Controller
@RequestMapping("/peserta")
public class PesertaController {
	
	// need to inject the Peserta DAO 
	@Autowired
	private PesertaDAO pesertaDAO;
	
	@RequestMapping("/indexPeserta")
	public String indexPeserta(Model theModel) {
		
		// get Peserta from DAO
		List<Peserta> pesertaObject = pesertaDAO.getPeserta();
		
		// Add the Peserta to the Model
		theModel.addAttribute("pesertas", pesertaObject);
		
		return "indexPeserta";
	}

	@RequestMapping("/register")
	public String createPeserta(Model theModel) {

		// create a peserta object
		Peserta pesertaObject = new Peserta();

		// add peserta object to the model
		theModel.addAttribute("peserta", pesertaObject);

		return "register";
	}

	@RequestMapping("/registerProcess")
	public String storePeserta(@Valid @ModelAttribute("peserta") Peserta pesertaObject,
			BindingResult theBindingResult) {

		if (theBindingResult.hasErrors()) {

			return "register";

		} else {

			return "blank";

		}

//		if (true) {
//			
//			return "home";
//			
//		} else {
//			
//			return "register";
//
//		}
	}

}
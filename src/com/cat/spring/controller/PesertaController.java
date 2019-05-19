package com.cat.spring.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cat.spring.entity.Peserta;
import com.cat.spring.service.PesertaService;

@Controller
@RequestMapping("/peserta")
public class PesertaController {
	
	// need to inject our peserta service
	@Autowired
	private PesertaService pesertaService;
	
	// @GetMapping("/")
	@GetMapping("/indexPeserta")
	public String indexPeserta(Model theModel) {
		
		// get Peserta from the service
		List<Peserta> pesertaObject = pesertaService.getPeserta();
		
		// Add the Peserta to the Model
		theModel.addAttribute("pesertas", pesertaObject);
		
		return "indexPeserta";
	}
	
	@RequestMapping("/tambahPeserta")
	public String tambahPeserta(Model theModel) {
		
		// create a peserta object
		Peserta pesertaObject = new Peserta();
	
		// add peserta object to the model
		theModel.addAttribute("peserta", pesertaObject);
		
		return "tambahPeserta";
	}
	
	@RequestMapping("/ubahPeserta")
	public String ubahPeserta(Model theModel) {
		
		// get Peserta from DAO
		//List<Peserta> pesertaObject = pesertaDAO.getPeserta();
		
		// Add the Peserta to the Model
		//theModel.addAttribute("pesertas", pesertaObject);
		
		return "ubahPeserta";
	}

	@GetMapping("/register")
	public String createPeserta(Model theModel) {

		// create a peserta object
		Peserta pesertaObject = new Peserta();

		// add peserta object to the model
		theModel.addAttribute("peserta", pesertaObject);

		return "register";
	}

	@PostMapping("/registerProcess")
	public String storePeserta(@Valid @ModelAttribute("peserta") Peserta pesertaObject,
			BindingResult theBindingResult) {

		if (theBindingResult.hasErrors()) {

			return "register";

		} else {

			return "blank";

		}

	}
	
	@PostMapping("/tambahProcess")
	public String storePeserta2(@Valid @ModelAttribute("peserta") Peserta pesertaObject,
			BindingResult theBindingResult) {

		if (theBindingResult.hasErrors()) {

			return "/tambahPeserta";

		} else {
			
			pesertaService.storePeserta2(pesertaObject);

			return "redirect:/peserta/indexPeserta";

		}

	}

}

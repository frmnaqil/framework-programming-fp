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
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@PostMapping("/tambahProcess")
	public String tambahProcess(@Valid @ModelAttribute("peserta") Peserta pesertaObject,
			BindingResult theBindingResult) {

		if (theBindingResult.hasErrors()) {

			return "/tambahPeserta";

		} else {
			
			pesertaService.save(pesertaObject);

			return "redirect:/peserta/indexPeserta";

		}

	}
	
	@GetMapping("/ubahPeserta")
	public String ubahPeserta(@RequestParam("pesertaId") int noId, Model theModel) {
		
		// get the peserta from our service
		Peserta pesertaObject = pesertaService.getPeserta(noId);
		
		// set peserta as a model attribute to pre-populate the form
		theModel.addAttribute("peserta", pesertaObject);
		
		// send over to our form
		return "ubahPeserta";
	}
	
	@PostMapping("/ubahProcess")
	public String ubahProcess(@Valid @ModelAttribute("peserta") Peserta pesertaObject,
			BindingResult theBindingResult) {
		
		if (theBindingResult.hasErrors()) {

			return "ubahPeserta";

		} else {
			
			pesertaService.save(pesertaObject);

			return "redirect:/peserta/indexPeserta";

		}
		
	}
	
	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam("pesertaId") int noId) {
		
		pesertaService.delete(noId);
		
		return "redirect:/peserta/indexPeserta";
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
			
			pesertaService.save(pesertaObject);

			return "redirect:/";


		}

	}
	

}

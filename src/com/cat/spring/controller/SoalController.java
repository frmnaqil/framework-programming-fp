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

import com.cat.spring.dao.SoalDAO;
import com.cat.spring.entity.Soal;

@Controller
@RequestMapping("/soal")
public class SoalController {
	
	// need to inject the Soal DAO
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
		
		// create a soal object
		Soal soalObject = new Soal();
			
		// add soal object to the model
		theModel.addAttribute("soal", soalObject);
		
		return "tambahSoal";
	}
	
	@PostMapping("/tambahProcess")
	public String tambahProcess(@Valid @ModelAttribute("soal") Soal soalObject,
			BindingResult theBindingResult) {

		if (theBindingResult.hasErrors()) {

			return "/tambahSoal";

		} else {
			
			soalDAO.save(soalObject);

			return "redirect:/soal/indexSoal";

		}

	}
	
	@GetMapping("/ubahSoal")
	public String ubahSoal(@RequestParam("soalId") int noId, Model theModel) {
		
		// get the soal from our service
		Soal soalObject = soalDAO.getSoal(noId);
		
		// set soal as a model attribute to pre-populate the form
		theModel.addAttribute("soal", soalObject);
		
		// send over to our form
		return "ubahSoal";
	}
	
	@PostMapping("/ubahProcess")
	public String ubahProcess(@Valid @ModelAttribute("soal") Soal soalObject,
			BindingResult theBindingResult) {
		
		if (theBindingResult.hasErrors()) {

			return "ubahSoal";

		} else {
			
			soalDAO.save(soalObject);

			return "redirect:/soal/indexSoal";

		}
		
	}

}

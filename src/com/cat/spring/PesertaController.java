package com.cat.spring;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/peserta")
public class PesertaController {

	@RequestMapping("/register")
	public String registerIndex(Model theModel) {

		// create a peserta object
		Peserta pesertaObject = new Peserta();

		// add peserta object to the model
		theModel.addAttribute("peserta", pesertaObject);

		return "register";
	}

	@RequestMapping("/registerProcess")
	public String registerProcess(@Valid @ModelAttribute("peserta") Peserta pesertaObject,
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

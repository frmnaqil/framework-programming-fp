package com.cat.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/soal")
public class SoalController {
	
	public String soalIndex(Model theModel) {
		
		// create soal object
		
		
		return "soal";
		
	}
	

}

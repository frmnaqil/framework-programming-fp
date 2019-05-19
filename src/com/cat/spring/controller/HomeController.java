package com.cat.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.resource.PathResourceResolver;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/signinPeserta")
	public String signinPeserta() {
		return "signinPeserta";
	}
	
	@RequestMapping("/soalujian")
	public String soalujian() {
		return "soalujian";
	}
	
	@RequestMapping("/admin")
	public String admin() {
		return "admindashboard";
	}
	
	@RequestMapping("/adminsoal")
	public String adminsoal() {
		return "adminsoal";
	}
	
	@RequestMapping("/startUjian")
	public String startUjian() {
		return "startUjian";
	}
	
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        
        registry
        	.addResourceHandler("/resources/**")
            .addResourceLocations("/resources/")
            .setCachePeriod(3600)
            .resourceChain(true)
            .addResolver(new PathResourceResolver());
        
}
	
}

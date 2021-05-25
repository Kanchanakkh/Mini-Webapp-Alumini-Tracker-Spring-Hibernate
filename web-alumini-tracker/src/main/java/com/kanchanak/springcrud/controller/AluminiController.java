package com.kanchanak.springcrud.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/alumini")
public class AluminiController {

	@RequestMapping("/list")
	public String listAlumini(Model theModel) {
		
		return "list-alumini";
	}
}

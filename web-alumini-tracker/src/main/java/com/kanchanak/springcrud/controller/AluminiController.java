package com.kanchanak.springcrud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kanchanak.springcrud.dao.AluminusDAO;
import com.kanchanak.springcrud.entity.Aluminus;

@Controller
@RequestMapping("/alumini")
public class AluminiController {

	//need to inject the alumini dao
	@Autowired
	private AluminusDAO aluminusDAO;
	
	
	@RequestMapping("/list")
	public String listAlumini(Model theModel) {
		
		//get alumini from the dao
		List<Aluminus> theAlumini = aluminusDAO.getAlumini();
		//add the alumini to the model  
		theModel.addAttribute("alumini", theAlumini);
		
		return "list-alumini";
	}
}

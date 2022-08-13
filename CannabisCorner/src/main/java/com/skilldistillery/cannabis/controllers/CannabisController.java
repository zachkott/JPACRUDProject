package com.skilldistillery.cannabis.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.cannabis.data.CannabisDAO;
import com.skilldistillery.cannabis.entities.Cannabis;

@Controller
public class CannabisController {

	@Autowired
	private CannabisDAO cannaDAO;

	@RequestMapping(path = { "/", "index.do" })
	public String index(Model model) {
		model.addAttribute("buds",cannaDAO.findAll()); 
		return "index";
	}
	
	@RequestMapping(path = "getBud.do")
	public String getBud(int cid, Model model) {
		Cannabis thisBud = cannaDAO.findById(cid);
		model.addAttribute("bud", thisBud);
		return "bud/showBud";
	}
}

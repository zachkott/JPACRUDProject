package com.skilldistillery.cannabis.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.cannabis.data.CannabisDAO;
import com.skilldistillery.cannabis.entities.Cannabis;

@Controller
public class CannabisController {

	@Autowired
	private CannabisDAO cannaDAO;
	
	

	@RequestMapping(path = { "/", "index.do" })
	public String index(Model model) {
		model.addAttribute("buds", cannaDAO.findAll());
		return "index";
	}

	@RequestMapping(path = "getBud.do")
	public String getBud(int cid, Model model) {
		Cannabis thisBud = cannaDAO.findById(cid);
		model.addAttribute("bud", thisBud);
		return "bud/showBud";
	}

	@RequestMapping(path = "addBud.do", method = RequestMethod.POST)
	public ModelAndView addABud(Cannabis bud, Model model, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		Cannabis thisBud = cannaDAO.create(bud);
		boolean createdBud = thisBud.getId() > 0 ? true : false;
		System.out.println(thisBud);
		redir.addFlashAttribute("bud", bud);
		redir.addFlashAttribute("createdBud", createdBud);
		mv.setViewName("redirect:thisBudWasCreated.do");
		return mv;

//		if (thisBud != null) {
//			model.addAttribute("bud", new Cannabis());
//
//			return "bud/confirmationStation";
//		} else {

	}

	@RequestMapping(path = "thisBudWasCreated.do", method = RequestMethod.GET)
	public String budHasBeenAdded(Model model) {
		return "bud/confirmationStation";

	}

	@RequestMapping(path = "addForm.do", method = RequestMethod.GET)
	public String addABud(Model model) {
		return "bud/budForm";

	}

	@RequestMapping(path = "deleteBud.do", method = RequestMethod.GET)
	public String deleteBud(Integer id, Model model) {
		if (id <= 0) {
			return "index";
		}

		Cannabis status = cannaDAO.findById(id);
		if (cannaDAO.delete(id) != null) {
			model.addAttribute("bud", status);
			return "bud/deletedBud";
		} else {
			return "index";
		}

	}

	@RequestMapping(path = "updateBudForm.do")
	public String updateBudForm(int id, Cannabis bud, Model model) {
		model.addAttribute("bud", cannaDAO.findById(id));
		return "bud/updateBud";
	}

	@RequestMapping(path = "updateBud.do", method = RequestMethod.POST)
	public String updateBud(int id, Cannabis bud, Model model) {
		cannaDAO.update(id, bud);
		model.addAttribute("bud", bud);
		return "bud/showBud";

	}
	
	@RequestMapping(path="showAllBud.do", method =RequestMethod.GET)
	public String showAll( Model model) {
		model.addAttribute("buds",cannaDAO.findAll()); 

		return "bud/showAll";
	}
	}
	



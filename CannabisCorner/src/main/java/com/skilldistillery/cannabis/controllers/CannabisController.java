package com.skilldistillery.cannabis.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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

	@RequestMapping(path = "deleteForm.do")
	public String delete(Model model) {
		return "bud/deleteBudForm";
	}

	@RequestMapping(path = "getBud.do")
	public String getBud(int cid, Model model) {
		Cannabis thisBud = cannaDAO.findById(cid);
		model.addAttribute("bud", thisBud);
		return "bud/showBud";
	}

	@RequestMapping(path = "addBud.do", method = RequestMethod.POST)
	public String addABud(Cannabis bud, Model model) {
		Cannabis thisBud = cannaDAO.create(bud);

		if (thisBud != null) {
			model.addAttribute("bud", bud);
			return "bud/confirmationStation";
		} else {

			return "bud/budForm";
		}

	}

	@RequestMapping(path = "addForm.do", method = RequestMethod.GET)
	public String addABud(Model model) {
		model.addAttribute("bud", new Cannabis());
		return "bud/budForm";

	}

	@RequestMapping(path = "deleteBud.do", method = RequestMethod.GET)
	public String deleteBud(int id, Model model) {
		boolean budWasDeleted = cannaDAO.delete(id);

		if (id <= 0) {
			return "index";
		}

		if (budWasDeleted) {
			return "bud/confirmationStation";
		} else {
			model.addAttribute("error", "Bud ID does not exist");
			return "bud/deleteBudForm";

		}
	}
}

package com.reno.blue.cuentas.mgmt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.reno.blue.cuentas.mgmt.model.Quincena;
import com.reno.blue.cuentas.mgmt.service.QuincenaService;

@Controller
@RequestMapping(value = { "", "/quincena" })
public class QuincenaController {

	@Autowired
	private QuincenaService quincenaService;

	@RequestMapping(value = { "/", "list" })
	public String index(Model model) {
		model.addAttribute("quincenas", quincenaService.findAll());
		return "quincena/index";
	}
	
	@RequestMapping(value = "create")
	public String create() {
		return "quincena/create";
	}

	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String save(Quincena quincena) {
		quincenaService.save(quincena);
		return "redirect:list";
	}

	@RequestMapping(value = "edit/{id}")
	public String edit(@PathVariable Long id, Model model) {
		model.addAttribute("quincena", quincenaService.findById(id));
		return "quincena/edit";
	}

	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(Quincena quincena) {
		quincenaService.save(quincena);
		return "redirect:list";
	}
	
	@RequestMapping(value = "{id}")
	public String delete(@PathVariable Long id, Model model) {
		quincenaService.delete(id);
		return "redirect:list";
	}

}
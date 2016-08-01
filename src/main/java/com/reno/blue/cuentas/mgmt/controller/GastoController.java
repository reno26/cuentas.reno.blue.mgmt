package com.reno.blue.cuentas.mgmt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.reno.blue.cuentas.mgmt.model.Gasto;
import com.reno.blue.cuentas.mgmt.service.GastoService;
//
@Controller
@RequestMapping(value = { "", "/gasto" })
public class GastoController {

	@Autowired
	private GastoService gastoService;

	@RequestMapping(value = { "/", "index" })
	public String index(Model model) {
		System.out.println(gastoService.findAll());
		model.addAttribute("gastos", gastoService.findAll());
		return "gasto/index";
	}

	@RequestMapping(value = "create")
	public String create() {
		return "gasto/create";
	}

	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String save(Gasto gasto) {
		gastoService.save(gasto);
		return "redirect:index";
	}

	@RequestMapping(value = "edit/{id}")
	public String edit(@PathVariable Long id, Model model) {
		model.addAttribute("gasto", gastoService.findById(id));
		return "gasto/edit";
	}

	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(Gasto gasto) {
		gastoService.save(gasto);
		return "redirect:index";
	}

	@RequestMapping(value = "/test")
	public String test() {
		return " hello world";
	}

}
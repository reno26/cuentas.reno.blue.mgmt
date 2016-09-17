package com.reno.blue.cuentas.mgmt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.reno.blue.cuentas.mgmt.model.Cuenta;
import com.reno.blue.cuentas.mgmt.service.CuentaService;


@Controller
@RequestMapping(value = { "/cuenta" })
public class CuentaController {

	@Autowired
	private CuentaService cuentaService;

	@RequestMapping(value = { "/", "lista" })
	public String index(Model model) {
		System.out.println(cuentaService.findAll());
		model.addAttribute("cuentas", cuentaService.findAll());
		return "cuenta/index";
	}

//	@RequestMapping(value = "create")
	public String create() {
		return "cuenta/create";
	}

//	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String save(Cuenta cuenta) {
		cuentaService.save(cuenta);
		return "redirect:index";
	}

//	@RequestMapping(value = "edit/{id}")
	public String edit(@PathVariable Long id, Model model) {
		model.addAttribute("cuenta", cuentaService.findById(id));
		return "cuenta/edit";
	}

//	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(Cuenta cuenta) {
		cuentaService.save(cuenta);
		return "redirect:index";
	}

//	@RequestMapping(value = "/test")
	public String test() {
		return " hello world";
	}

}
package com.reno.blue.cuentas.mgmt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.reno.blue.cuentas.mgmt.model.Cuenta;
import com.reno.blue.cuentas.mgmt.service.CuentaService;
import com.reno.blue.cuentas.mgmt.service.QuincenaService;

@Controller
@RequestMapping(value = { "/cuenta" })
public class CuentaController {

	@Autowired
	private CuentaService cuentaService;

	@Autowired
	private QuincenaService quincenaService;

	@RequestMapping(value = { "/", "list" })
	public String index(Model model) {
		model.addAttribute("cuentas", cuentaService.findAll());
		return "cuenta/index";
	}

	@RequestMapping(value = { "addCuentaToQuincena" })
	public String addCuentaToquincena(Model model) {
		model.addAttribute("quincenas", quincenaService.findAll());
		return "cuenta/addCuentasQuincena";
	}

	@RequestMapping(value = "create")
	public String create(Model model) {
		model.addAttribute("quincenas", quincenaService.findAll());
		return "cuenta/create";
	}

	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String save(Cuenta cuenta) {
		cuentaService.save(cuenta);
		return "redirect:list";
	}

	@RequestMapping(value = "edit/{id}")
	public String edit(@PathVariable Long id, Model model) {
		model.addAttribute("cuenta", cuentaService.findById(id));
		return "cuenta/edit";
	}

	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(Cuenta cuenta) {
		cuentaService.save(cuenta);
		return "redirect:list";
	}

	@RequestMapping(value = "{id}")
	public String delete(@PathVariable Long id, Model model) {
		cuentaService.delete(id);
		return "redirect:list";
	}

}
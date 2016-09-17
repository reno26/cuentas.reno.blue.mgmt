package com.reno.blue.cuentas.mgmt.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.reno.blue.cuentas.mgmt.model.Cuenta;
import com.reno.blue.cuentas.mgmt.repository.CuentaRepository;

@Service
public class CuentaService {

	@Autowired
	private CuentaRepository gastoRepository;

	public Object findAll() {
		return gastoRepository.findAll();
	}

	public Cuenta findById(Long id) {
		return gastoRepository.findOne(id);
	}

	public Cuenta save(Cuenta gasto) {
		return gastoRepository.save(gasto);
	}

}
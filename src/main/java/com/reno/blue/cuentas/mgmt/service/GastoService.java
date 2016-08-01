package com.reno.blue.cuentas.mgmt.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.reno.blue.cuentas.mgmt.model.Gasto;
import com.reno.blue.cuentas.mgmt.repository.GastoRepository;

@Service
public class GastoService {

	@Autowired
	private GastoRepository gastoRepository;

	public Object findAll() {
		return gastoRepository.findAll();
	}

	public Gasto findById(Long id) {
		return gastoRepository.findOne(id);
	}

	public Gasto save(Gasto gasto) {
		return gastoRepository.save(gasto);
	}

}
package com.reno.blue.cuentas.mgmt.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.reno.blue.cuentas.mgmt.model.Cuenta;
import com.reno.blue.cuentas.mgmt.repository.CuentaRepository;

@Service
public class CuentaService {

	@Autowired
	private CuentaRepository cuentaRepository;

	public Object findAll() {
		return cuentaRepository.findAll();
	}

	public Cuenta findById(Long id) {
		return cuentaRepository.findOne(id);
	}

	public Cuenta save(Cuenta cuenta) {
		return cuentaRepository.save(cuenta);
	}
	
	public void delete(Long id) {
		cuentaRepository.delete(id);		
	}

}
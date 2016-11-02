package com.reno.blue.cuentas.mgmt.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.reno.blue.cuentas.mgmt.model.Quincena;
import com.reno.blue.cuentas.mgmt.repository.QuincenaRepository;

@Service
public class QuincenaService {

	@Autowired
	private QuincenaRepository quincenaRepository;

	public Object findAll() {
		return quincenaRepository.findAll();
	}

	public Quincena findById(Long id) {
		return quincenaRepository.findOne(id);
	}

	public Quincena save(Quincena quincena) {
		return quincenaRepository.save(quincena);
	}
	
	public void delete(Long id) {
		quincenaRepository.delete(id);		
	}

}
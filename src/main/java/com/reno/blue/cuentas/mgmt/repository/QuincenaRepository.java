package com.reno.blue.cuentas.mgmt.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.reno.blue.cuentas.mgmt.model.Quincena;


@Repository
public interface QuincenaRepository extends CrudRepository<Quincena, Long>{

}

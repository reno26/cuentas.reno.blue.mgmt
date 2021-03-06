package com.reno.blue.cuentas.mgmt.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.reno.blue.cuentas.mgmt.model.Gasto;

@Repository
public interface GastoRepository extends CrudRepository<Gasto, Long>{

}

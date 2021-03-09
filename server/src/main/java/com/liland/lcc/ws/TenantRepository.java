package com.liland.lcc.ws;

import org.springframework.data.jpa.repository.JpaRepository;

public interface TenantRepository extends JpaRepository<TenantDB, Integer>{
	TenantDB findBySystemidAndExternalid(int systemid, int externalid);
	
	TenantDB findBySystemid(int systemid);
}

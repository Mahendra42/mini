package com.cts.repo;

import org.springframework.data.repository.CrudRepository;

import com.cts.model.admin;

public interface AdminRepo extends CrudRepository<admin, Long> {
	admin findByuserNameAndPassword(String userName, String password);
	
}

package com.bankapp.model.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bankapp.web.entities.User;

@Repository
public interface Userdao extends JpaRepository<User, Integer>{
	public User findByUsername(String username);
	
}

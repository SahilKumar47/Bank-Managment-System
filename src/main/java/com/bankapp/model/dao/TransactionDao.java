package com.bankapp.model.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bankapp.web.entities.Transaction;


@Repository
public interface TransactionDao extends JpaRepository<Transaction, Integer>{
	public List<Transaction> findByToAccount(Integer toAccount);
	
	public List<Transaction> findByFromAccount(Integer fromAccount);
	
	public List<Transaction> findByStatus(String status);
	
	
}

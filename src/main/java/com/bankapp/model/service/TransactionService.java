package com.bankapp.model.service;

import java.util.List;

import com.bankapp.web.entities.Transaction;

public interface TransactionService {
	public void withdraw(Integer accountId, Double amount);

	public void deposit(Integer accountId, Double amount);

	public void transfer(Integer fromAccountId, Integer toAccountId, Double amount);

	public List<Transaction> getAllTranscations();

	public Transaction getTranscationById(Integer transactionId);

	public Transaction addTranscation(Transaction transcation);
	
	public Transaction updateTransaction(Integer transactionId, String status);
	
	public List<Transaction> showTransactionByFromAccountId(Integer fromAccountId);
	
	public List<Transaction> showTransactionByToAccountId(Integer toAccountId);

	public List<Transaction> showTransactionByStatus(String status);
	
	public void approveTransaction(Transaction transaction);
}

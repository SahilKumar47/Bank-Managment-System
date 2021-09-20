package com.bankapp.model.service;

import com.bankapp.web.entities.Account;

public interface AccountService {
	public Account getAccountById(Integer accountId);

	public Account updateAccountById(Integer accountId, Double balance);
	
	public Account addAccount(Account account);
}

package com.bankapp.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bankapp.model.dao.AccountDao;
import com.bankapp.model.exceptions.AccountNotFoundException;
import com.bankapp.web.entities.Account;

@Service
@Transactional
public class AccountServiceImpl implements AccountService {

	private AccountDao accountDao;

	@Autowired
	public AccountServiceImpl(AccountDao accountDao) {
		this.accountDao = accountDao;
	}

	@Override
	public Account getAccountById(Integer accountId) {
		return accountDao.findById(accountId)
				.orElseThrow(() -> new AccountNotFoundException("Account of id " + accountId + " not found"));
	}

	@Override
	public Account updateAccountById(Integer accountId, Double balance) {
		Account account = getAccountById(accountId);
		account.setAccountBalance(balance);
		accountDao.save(account);
		return account;
	}

	@Override
	public Account addAccount(Account account) {
		accountDao.save(account);
		return account;
	}

}

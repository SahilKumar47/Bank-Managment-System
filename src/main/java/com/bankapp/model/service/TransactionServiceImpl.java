package com.bankapp.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bankapp.model.dao.TransactionDao;
import com.bankapp.model.exceptions.AccountNotFoundException;
import com.bankapp.model.exceptions.MinimumBalanceException;
import com.bankapp.model.exceptions.TransactionNotFoundException;
import com.bankapp.web.entities.Account;
import com.bankapp.web.entities.Transaction;

@Service
@Transactional
public class TransactionServiceImpl implements TransactionService {

	private TransactionDao transactionDao;
	private AccountService accountService;

	@Autowired
	public TransactionServiceImpl(TransactionDao transactionDao, AccountService accountService) {
		this.transactionDao = transactionDao;
		this.accountService = accountService;
	}

	@Override
	@Transactional(rollbackFor = { MinimumBalanceException.class, AccountNotFoundException.class })
	public void withdraw(Integer accountId, Double amount) {
		Account account = accountService.getAccountById(accountId);
		if (account.getAccountBalance() >= amount) {
			account.setAccountBalance(account.getAccountBalance() - amount);
			Transaction transcation = new Transaction(account.getAccountId(), null, amount, "WITHDRAW", "Complete");
			transcation.setAccount(account);
			account.getTranscationHistory().add(transcation);
			transactionDao.save(transcation);
			accountService.addAccount(account);
		} else {
			throw new MinimumBalanceException("Minimum balance reached");
		}
	}

	@Override
	@Transactional(rollbackFor = { AccountNotFoundException.class })
	public void deposit(Integer accountId, Double amount) {
		Account account = accountService.getAccountById(accountId);
		account.setAccountBalance(account.getAccountBalance() + amount);
		Transaction transcation = new Transaction(account.getAccountId(), null, amount, "DEPOSIT", "Complete");
		transcation.setAccount(account);
		account.getTranscationHistory().add(transcation);
		transactionDao.save(transcation);
		accountService.addAccount(account);
	}

	@Override
	@Transactional(rollbackFor = { MinimumBalanceException.class, AccountNotFoundException.class })
	public void transfer(Integer fromAccountId, Integer toAccountId, Double amount) {
		Account from_account = accountService.getAccountById(fromAccountId);
		Account to_account = accountService.getAccountById(toAccountId);
		if (from_account.getAccountBalance() >= amount) {
			if (amount <= 200000) {
				from_account.setAccountBalance(from_account.getAccountBalance() - amount);
				to_account.setAccountBalance(to_account.getAccountBalance() + amount);
				Transaction transaction = new Transaction(fromAccountId, toAccountId, amount, "TRANSFER", "Approved");
				from_account.getTranscationHistory().add(transaction);
				transaction.setAccount(from_account);
				transactionDao.save(transaction);
				accountService.addAccount(from_account);
				accountService.addAccount(to_account);
			} else {
				Transaction transaction = new Transaction(fromAccountId, toAccountId, amount, "TRANSFER", "Pending");
				from_account.getTranscationHistory().add(transaction);
				transaction.setAccount(from_account);
				transactionDao.save(transaction);
				accountService.addAccount(from_account);
				accountService.addAccount(to_account);
			}
		} else {
			throw new MinimumBalanceException("Minimum balance reached");
		}
	}

	@Override
	public List<Transaction> getAllTranscations() {
		return transactionDao.findAll();
	}

	@Override
	public Transaction getTranscationById(Integer transactionId) {
		return transactionDao.findById(transactionId).orElseThrow(
				() -> new TransactionNotFoundException("Transaction with id " + transactionId + " not found"));
	}

	@Override
	public Transaction addTranscation(Transaction transaction) {
		return null;
	}

	@Override
	public List<Transaction> showTransactionByFromAccountId(Integer fromAccountId) {
		return transactionDao.findByFromAccount(fromAccountId);
	}

	@Override
	public List<Transaction> showTransactionByToAccountId(Integer toAccountId) {
		return transactionDao.findByToAccount(toAccountId);
	}

	@Override
	public List<Transaction> showTransactionByStatus(String status) {
		return transactionDao.findByStatus(status);
	}

	@Override
	public Transaction updateTransaction(Integer transactionId, String status) {
		Transaction transaction = getTranscationById(transactionId);
		transaction.setStatus(status);
		transactionDao.save(transaction);
		return transaction;
	}

	@Override
	@Transactional(rollbackFor = {MinimumBalanceException.class, AccountNotFoundException.class})
	public void approveTransaction(Transaction transaction) {
		Account from_account = accountService.getAccountById(transaction.getFromAccount());
		Account to_account = accountService.getAccountById(transaction.getToAccount());
		if(from_account.getAccountBalance() < transaction.getAmount()) {
			transaction.setStatus("Rejected");
			transactionDao.save(transaction);
		} else {
			from_account.setAccountBalance(from_account.getAccountBalance() - transaction.getAmount());
			to_account.setAccountBalance(to_account.getAccountBalance() + transaction.getAmount());
			transaction.setStatus("Approved");
			transactionDao.save(transaction);
			accountService.addAccount(from_account);
			accountService.addAccount(to_account);
		}
	}

}

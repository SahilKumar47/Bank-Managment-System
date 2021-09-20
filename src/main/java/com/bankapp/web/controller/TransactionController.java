package com.bankapp.web.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bankapp.model.dto.TransferObject;
import com.bankapp.model.service.TransactionService;
import com.bankapp.web.entities.Transaction;

@Controller
public class TransactionController {

	private TransactionService transactionService;

	public TransactionController(TransactionService transactionService) {
		this.transactionService = transactionService;
	}

	@GetMapping(value = "/transactionHistory")
	public String showAllCustomer(ModelMap map) {
		map.addAttribute("TransactionHistory", transactionService.getAllTranscations());
		return "transactionHistory";
	}

	@GetMapping(value = "/withdraw")
	public String withdrawMoney(ModelMap map) {
		map.addAttribute("transferObject", new TransferObject());
		return "withdraw";
	}

	@PostMapping(value = "/withdraw")
	public String withdrawMoneyPost(@ModelAttribute(name = "tranferObject") TransferObject transferObject) {
		transactionService.withdraw(transferObject.getFromAccountId(), transferObject.getTransferAmount());
		return "redirect:transactionHistory";
	}

	@GetMapping(value = "/deposit")
	public String depositMoney(ModelMap map) {
		map.addAttribute("transferObject", new TransferObject());
		return "deposit";
	}

	@PostMapping(value = "/deposit")
	public String depositMoneyPost(@ModelAttribute(name = "tranferObject") TransferObject transferObject) {
		transactionService.deposit(transferObject.getFromAccountId(), transferObject.getTransferAmount());
		return "redirect:transactionHistory";
	}

	@GetMapping(value = "/transfer")
	public String transferMoney(ModelMap map) {
		map.addAttribute("transferObject", new TransferObject());
		return "transfer";
	}

	@PostMapping(value = "/transfer")
	public String transferMoneyPost(@ModelAttribute(name = "tranferObject") TransferObject transferObject) {
		transactionService.transfer(transferObject.getFromAccountId(), transferObject.getToAccountId(),
				transferObject.getTransferAmount());
		return "redirect:transactionHistory";
	}
	
	@GetMapping(value = "/viewTransaction")
	public String showCustomerTransaction(@RequestParam(name = "id") Integer accountId, ModelMap map) {
		List<Transaction> fromAccList = transactionService.showTransactionByFromAccountId(accountId);
		List<Transaction> toAccList = transactionService.showTransactionByToAccountId(accountId);
		fromAccList.addAll(toAccList);
		map.addAttribute("TransactionHistory", fromAccList);
		return "transactionHistory";
	}
	
	@GetMapping(value = "/pendingTransactions")
	public String showPendingTransactions(ModelMap map) {
		map.addAttribute("TransactionHistory", transactionService.showTransactionByStatus("Pending"));
		return "pendingTransactions";
	}
	
	@GetMapping(value = "/rejectTransaction")
	public String rejectTransaction(@RequestParam(name = "id") Integer transactionId) {
		transactionService.updateTransaction(transactionId, "Rejected");
		return "redirect:pendingTransactions";
	}
	
	@GetMapping(value = "/approveTransaction")
	public String approveTransaction(@RequestParam(name = "id") Integer transactionId) {
		Transaction transaction = transactionService.getTranscationById(transactionId);
		transactionService.approveTransaction(transaction);
		return "redirect:pendingTransactions";
	}

}

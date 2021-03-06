package com.bankapp.web.entities;

import java.util.*;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "account_table")
public class Account {	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer accountId;
	private Double accountBalance;
	
	@OneToOne(mappedBy = "account")
	private Customer customer;
	
	@OneToMany(mappedBy = "account", cascade = CascadeType.MERGE)
	private List<Transaction> transcationHistory= new ArrayList<>();
	
	public Account(Double accountBalance) {
		this.accountBalance = accountBalance;
	}
	
	
}

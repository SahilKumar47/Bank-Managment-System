package com.bankapp.model.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class CustomerObject {
	private Integer customerId;
	private String customerName;
	private String customerAddress;
	private String customerPhone;
	private String customerEmail;
	private Double accountBalance;
}

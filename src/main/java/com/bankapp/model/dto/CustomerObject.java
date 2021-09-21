package com.bankapp.model.dto;


import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

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
	@NotEmpty
	private String customerName;
	@NotEmpty
	private String customerAddress;
	@Min(value = 10)
	private String customerPhone;
	private String customerEmail;
	@NotNull
	@Min(value = 100)
	private Double accountBalance;
}

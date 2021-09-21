package com.bankapp.model.dto;


import javax.validation.constraints.NotNull;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class TransferObject {
	@NotNull(message = "Account number cannot be null")
	private Integer fromAccountId;
	private Integer toAccountId;
	@NotNull(message = "Amount number cannot be null")
	private Double transferAmount;
}

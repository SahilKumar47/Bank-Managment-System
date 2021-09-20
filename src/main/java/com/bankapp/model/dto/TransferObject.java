package com.bankapp.model.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class TransferObject {
	private Integer fromAccountId;
	private Integer toAccountId;
	private Double transferAmount;
}

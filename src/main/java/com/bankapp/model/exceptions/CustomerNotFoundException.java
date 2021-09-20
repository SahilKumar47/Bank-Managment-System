package com.bankapp.model.exceptions;

public class CustomerNotFoundException extends RuntimeException {

	private static final long serialVersionUID = -3712832273745905414L;

	public CustomerNotFoundException(String message) {
		super(message);
	}
	
}

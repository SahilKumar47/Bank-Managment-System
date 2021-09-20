package com.bankapp.model.service;

import java.util.List;

import com.bankapp.model.dto.CustomerObject;
import com.bankapp.web.entities.Customer;

public interface CustomerService {
	public Customer addCustomer(Customer customer);

	public Customer updateCustomer(Integer customerId, CustomerObject customer);

	public Customer deleteCustomer(Integer customerId);

	public Customer getCustomerById(Integer customerId);

	public List<Customer> getAllCustomer();
}

package com.bankapp.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bankapp.model.dao.CustomerDao;
import com.bankapp.model.dto.CustomerObject;
import com.bankapp.model.exceptions.CustomerNotFoundException;
import com.bankapp.web.entities.Customer;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService {

	private CustomerDao customerDao;

	@Autowired
	public CustomerServiceImpl(CustomerDao customerDao) {
		this.customerDao = customerDao;
	}

	@Override
	public Customer addCustomer(Customer customer) {
		customerDao.save(customer);
		return customer;
	}

	@Override
	public Customer updateCustomer(Integer customerId, CustomerObject customer) {
		Customer customer2 = getCustomerById(customerId);
		customer2.setCustomerAddress(customer.getCustomerAddress());
		customerDao.save(customer2);
		return customer2;
	}

	@Override
	public Customer deleteCustomer(Integer customerId) {
		Customer customer = getCustomerById(customerId);
		customerDao.delete(customer);
		return customer;
	}

	@Override
	public Customer getCustomerById(Integer customerId) {
		Customer customer = customerDao.findById(customerId)
				.orElseThrow(() -> new CustomerNotFoundException("Customer with id " + customerId + "is not found"));
		return customer;
	}
	
	@Override
	public List<Customer> getAllCustomer() {
		return customerDao.findAll();
	}

}

package com.bankapp.web.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bankapp.model.dto.CustomerObject;
import com.bankapp.model.service.CustomerService;
import com.bankapp.web.entities.Account;
import com.bankapp.web.entities.Customer;

@Controller
public class CustomerController {
	private CustomerService customerService;

	@Autowired
	public CustomerController(CustomerService customerService) {
		this.customerService = customerService;
	}

	@GetMapping(value = "/allCustomers")
	public String showAllCustomer(ModelMap map) {
		map.addAttribute("Customers", customerService.getAllCustomer());
		return "allCustomers";
	}

	@GetMapping(value = "/addCustomer")
	public String addCustomer(ModelMap map) {
		map.addAttribute("customerObject", new CustomerObject());
		return "addCustomer";
	}

	@PostMapping(value = "/addCustomer")
	public String addCustomerPost(@ModelAttribute(name = "customerObject") CustomerObject customerObject) {
		Integer customerId = customerObject.getCustomerId();
		if (customerId == 0) {

			Customer customer = new Customer(customerObject.getCustomerName(), customerObject.getCustomerAddress(),
					customerObject.getCustomerPhone(), customerObject.getCustomerEmail());
			Account account = new Account(customerObject.getAccountBalance());
			customer.setAccount(account);
			customerService.addCustomer(customer);
		} else {
			customerService.updateCustomer(customerId, customerObject);
		}
		return "redirect:allCustomers";
	}

	@GetMapping(value = "/updateCustomer")
	public String updateCustomer(@RequestParam(name = "id") Integer customerId, ModelMap map) {
		Customer customer = customerService.getCustomerById(customerId);
		CustomerObject customerObject = new CustomerObject(customer.getCustomerId(), customer.getCustomerName(), customer.getCustomerAddress(), customer.getCustomerPhone(), customer.getCustomerEmail(), customer.getAccount().getAccountBalance());
		map.addAttribute("customerObject", customerObject);
		return "updatecustomer";
	}
	
	@GetMapping(value = "/deleteCustomer")
	public String updateCustomer(@RequestParam(name = "id") Integer customerId) {
		customerService.deleteCustomer(customerId);
		return "redirect:allcustomers";
	}	
}

package com.bankapp.web.controller;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bankapp.model.dto.CustomerObject;
import com.bankapp.model.service.CustomerService;
import com.bankapp.web.entities.Account;
import com.bankapp.web.entities.Customer;

@Controller
@RequestMapping(path = "/customer")
public class CustomerController {
	private CustomerService customerService;

	@Autowired
	public CustomerController(CustomerService customerService) {
		this.customerService = customerService;
	}

	@GetMapping(value = "/allCustomers")
	public String showAllCustomer(ModelMap map) {
		map.addAttribute("Customers", customerService.getAllCustomer());
		return "allCustomers_new";
	}

	@GetMapping(value = "/addCustomer")
	public String addCustomer(ModelMap map) {
		map.addAttribute("customerObject", new CustomerObject());
		return "addCustomer_new";
	}

	@PostMapping(value = "/addCustomer")
	public String addCustomerPost(@Valid @ModelAttribute(name = "customerObject") CustomerObject customerObject, BindingResult result) {
		if(result.hasErrors()) {
			return "addCustomer_new";
		}
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

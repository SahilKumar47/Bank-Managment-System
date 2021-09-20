package com.bankapp.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bankapp.model.service.UserService;
import com.bankapp.web.entities.User;

@Controller
public class UserController {
	private UserService userService;

	@Autowired
	public UserController(UserService userService) {
		this.userService = userService;
	}

	@GetMapping(value = "/allUsers")
	public String showAllUsers(ModelMap map) {
		map.addAttribute("Users", userService.getAllUser());
		return "allUsers";
	}

	@GetMapping(value = "/addUser")
	public String addUser(ModelMap map) {
		map.addAttribute("user", new User());
		return "addUser";
	}

	@PostMapping(value = "/addUser")
	public String addUserPost(@ModelAttribute(name = "user") User user) {
		Integer userId = user.getUserId();
		if (userId == 0) {
			userService.addUser(user);
		} else {
			userService.updateUser(userId, user.getEmail());
		}
		return "redirect:allUsers";
	}

	@GetMapping(value = "/updateUser")
	public String updateCustomer(@RequestParam(name = "id") Integer userId, ModelMap map) {
		map.addAttribute("user", userService.getUserById(userId));
		return "updateUser";
	}

	@GetMapping(value = "/deleteUser")
	public String updateCustomer(@RequestParam(name = "id") Integer userId) {
		userService.deleteUser(userId);
		return "redirect:allUsers";
	}
}

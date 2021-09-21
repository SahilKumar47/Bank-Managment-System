package com.bankapp.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bankapp.sec.service.SecUser;

@Controller
@RequestMapping(path = "/")
public class WebController {
	@GetMapping(path="/login")
	public String login() {
		return "login_new";
	}
	
	@GetMapping(path="/home")
	public String hello() {
		return "home";
	}
	
	@GetMapping(path="/accessdenied")
	public String accessDenied(@AuthenticationPrincipal SecUser secUser, ModelMap map) {
		map.addAttribute("username", secUser.getUsername());
		return "403";
	}
	
	@GetMapping(path = "/logout")
	public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null){    
	        new SecurityContextLogoutHandler().logout(request, response, auth);
	    }
	    return "redirect:/login?logout=1";
	}
}

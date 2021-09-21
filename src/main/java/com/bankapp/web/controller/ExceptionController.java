package com.bankapp.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

import com.bankapp.model.exceptions.AccountNotFoundException;

@ControllerAdvice
public class ExceptionController {
	@ExceptionHandler(AccountNotFoundException.class)
    public ModelAndView handleError(HttpServletRequest request, Exception e) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("accountError");
        mv.addObject("message", e.getMessage());
        return mv;
    }
    
    @ExceptionHandler(NoHandlerFoundException.class)
    public ModelAndView handleError404(HttpServletRequest request, Exception e) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("404");
        mv.addObject("message", "resource is not found!!!!");
        return mv;

 

    }
}

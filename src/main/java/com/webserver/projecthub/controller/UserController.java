package com.webserver.projecthub.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.webserver.projecthub.service.UserService;
import com.webserver.projecthub.vo.User;

@Controller
public class UserController {
	
	@Autowired
	UserService service;
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String login(User user, Model model, HttpSession session) {
		User result = service.login(user);
		
		if(result == null) {
			model.addAttribute("message", "다시 로그인해주세요");
			return "login";
		} else {
			session.setAttribute("loginId", result.getId());
			return "home";
		}
	}
	
	@ResponseBody
	@RequestMapping(value="/idChk", method = RequestMethod.POST)
	public int idChk(User user) {
		int result = service.idChk(user);
		return result;
	}

	@RequestMapping(value="/signup", method = RequestMethod.POST)
	public String signup(User user) {
		int result = service.idChk(user); 
		if(result == 1) {
			return "signup";
		}else {
			service.signup(user);
		}
		return "login";
	}
	

	
}

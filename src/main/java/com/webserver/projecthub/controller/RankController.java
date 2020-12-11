package com.webserver.projecthub.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.webserver.projecthub.service.ContentService;

@Controller
@RequestMapping(value="/rank")
public class RankController {
	
	@Autowired
	ContentService service;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String rank(Model model) {
		model.addAttribute("rankList", service.rank());
		System.out.println(service.rank());
		return "rank";
	}
}

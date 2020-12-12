package com.webserver.projecthub.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.webserver.projecthub.service.ContentService;

@Controller
@RequestMapping(value="/search")
public class SearchController {
	
	@Autowired
	ContentService service;
	
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	public String search(@RequestParam("keyword") String keyword, Model model) {
		System.out.println("keyword: " + keyword);
		model.addAttribute("searchWebList", service.searchWeb(keyword));
		System.out.println("Search web model : " + service.searchWeb(keyword));
		return "search";
	}
	
	
}

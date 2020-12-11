package com.webserver.projecthub.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/search")
public class SearchController {
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	public String search() {
		System.out.println("search");
		return "search";
	}
	
	
}

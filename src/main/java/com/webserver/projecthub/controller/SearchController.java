package com.webserver.projecthub.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.webserver.projecthub.service.ContentService;
import com.webserver.projecthub.service.UserService;

@Controller
@RequestMapping(value="/search")
public class SearchController {
	
	@Autowired
	ContentService contentservice;
	
	@Autowired
	UserService userservice;
	
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	public String search(@RequestParam("keyword") String keyword, Model model) {
		System.out.println("keyword: " + keyword);
		model.addAttribute("keyword", keyword);
		model.addAttribute("searchWebList", contentservice.searchWeb(keyword));
		model.addAttribute("searchWebCount", contentservice.searchWebCount(keyword));
		model.addAttribute("searchUser", userservice.searchUser(keyword));
		model.addAttribute("searchUserCount", userservice.searchUserCount(keyword));
		model.addAttribute("searchAllCount", contentservice.searchWebCount(keyword)+userservice.searchUserCount(keyword));
		System.out.println("Search user model : " + userservice.searchUser(keyword));
		return "search";
	}
	
	
}

package com.webserver.projecthub.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.webserver.projecthub.service.ContentService;
import com.webserver.projecthub.service.ProjectService;
import com.webserver.projecthub.service.UserService;


@Controller
@RequestMapping(value="/search")
public class SearchController {
	
	@Autowired
	ContentService contentservice;
	
	@Autowired
	UserService userservice;
	
	@Autowired
	ProjectService projectservice;
	
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	public String search(@RequestParam("keyword") String keyword, Model model) {
		System.out.println("keyword: " + keyword);
		int webcount =contentservice.searchWebCount(keyword);
		int usercount = userservice.searchUserCount(keyword);
		model.addAttribute("keyword", keyword);
		model.addAttribute("searchWebList", contentservice.searchWeb(keyword));
		model.addAttribute("searchWebCount", webcount);
		model.addAttribute("searchUser", userservice.searchUser(keyword));
		model.addAttribute("searchUserCount", usercount);
		model.addAttribute("searchAllCount", webcount+usercount);
		return "search";
	}
	
	@RequestMapping(value = "/user", method = RequestMethod.GET)
	public String auser(@RequestParam("id") String id, Model model) {
		model.addAttribute("id", id);
		model.addAttribute("projectList", projectservice.userprojectList(id));
		return "auser";
	}
	
}

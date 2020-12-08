package com.webserver.projecthub.controller;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.webserver.projecthub.service.ProjectService;
import com.webserver.projecthub.vo.Project;

@Controller
@RequestMapping(value ="/project")
public class ProjectController {
	
	@Autowired
	ProjectService service;
	
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String projectList(Model model, HttpSession session) {
		String userId = session.getAttribute("loginId").toString();
		model.addAttribute("projectList", service.projectList(userId));
		System.out.println(model);
		return "project/main";
	}
	

	// project 생성 화면
	@RequestMapping(value = "/insertView", method = RequestMethod.GET)
	public String insert(HttpSession session) {
		
		return "project/insert";
	}

	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insertProject(Project project, HttpSession session) {
		System.out.println(session.getAttribute("loginId"));
		int result = service.insertProject(project);
		if(result == 1) {
			return "redirect:/project";
		}else {
			return "mp";
		}
	}
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detail() {
		return "project/detail";
	}
}

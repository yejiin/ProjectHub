package com.webserver.projecthub.controller;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.webserver.projecthub.service.ContentService;
import com.webserver.projecthub.service.ProjectService;
import com.webserver.projecthub.vo.Content;
import com.webserver.projecthub.vo.Project;

@Controller
@RequestMapping(value ="/project")
public class ProjectController {
	
	@Autowired
	ProjectService projectservice;
	
	@Autowired
	ContentService contentservice;
	
	
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String projectList(Model model, HttpSession session) {
		String userId = session.getAttribute("loginId").toString();
		model.addAttribute("projectList", projectservice.projectList(userId));
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
		int result = projectservice.insertProject(project);
		if(result == 1) {
			return "redirect:/project";
		}else {
			return "project/insert";
		}
	}
	
	@RequestMapping(value = "/detail/{projectNo}", method = RequestMethod.GET)
	public String content(@PathVariable("projectNo") int projectNo,Model model) {
		model.addAttribute("projectNo", projectNo);
		model.addAttribute("project", projectservice.project(projectNo));
		model.addAttribute("websiteList", contentservice.websiteList(projectNo));
		model.addAttribute("memoList", contentservice.memoList(projectNo));
		return "content/main";
	}
	
	@RequestMapping(value = "/detail/insertwebView/{projectNo}", method = RequestMethod.GET)
	public String insertwebView(@PathVariable("projectNo") int projectNo, Model model) {
		model.addAttribute("projectNo", projectNo);
		return "content/insertweb";
	}
	
	@RequestMapping(value = "/detail/insertweb/{projectNo}", method = RequestMethod.POST)
	public String insertWeb(@PathVariable("projectNo") int projectNo,Content content) {
		int result = contentservice.insertWebsite(content);
		if(result == 1) {
			return "redirect:/project/detail/" + projectNo;
		}else {
			return "redirect: ../" + projectNo;
		}
	}
	
	@RequestMapping(value = "/detail/insertmemoView/{projectNo}", method = RequestMethod.GET)
	public String insertmemoView(@PathVariable("projectNo") int projectNo, Model model) {
		model.addAttribute("projectNo", projectNo);
		return "content/insertmemo";
	}
	
	@RequestMapping(value = "/detail/insertmemo/{projectNo}", method = RequestMethod.POST)
	public String insertMemo(@PathVariable("projectNo") int projectNo,Content content) {
		int result = contentservice.insertMemo(content);
		if(result == 1) {
			return "redirect:/project/detail/" + projectNo;
		}else {
			return "redirect: ../" + projectNo;
		}
	}
	
	@RequestMapping(value = "/detail/updatewebView/{projectNo}/{no}", method = RequestMethod.GET)
	public String updatewebView(@PathVariable("projectNo") int projectNo,@PathVariable("no") int no, Model model) {
		Content content = new Content();
		content = contentservice.selectContent(no);
		model.addAttribute("content",content);
		return "content/updateweb";
	}
	
	@RequestMapping(value = "/detail/updateweb/{projectNo}/{no}", method = RequestMethod.POST)
	public String updateWeb(Content content) {
		int projectNo = content.getProjectNo();
		int result = contentservice.updateWebsite(content);
		if(result == 1) {
			return "redirect:/project/detail/" + projectNo;
		}else {
			return "redirect:../" + projectNo;
		}
		
	}
	
	@RequestMapping(value = "/detail/updatememoView/{projectNo}/{no}", method = RequestMethod.GET)
	public String updatememoView(@PathVariable("projectNo") int projectNo,@PathVariable("no") int no, Model model) {
		Content content = new Content();
		content = contentservice.selectContent(no);
		model.addAttribute("content",content);
		return "content/updatememo";
	}
	
	@RequestMapping(value = "/detail/updatememo/{projectNo}/{no}", method = RequestMethod.POST)
	public String updateMemo(Content content) {
		int projectNo = content.getProjectNo();
		int result = contentservice.updateMemo(content);
		if(result == 1) {
			return "redirect:/project/detail/" + projectNo;
		}else {
			return "redirect:../" + projectNo;
		}
		
	}
	
	
	@RequestMapping(value = "/detail/delete/{projectNo}/{no}", method = RequestMethod.GET)
	public String delete(@PathVariable("projectNo") int projectNo,@PathVariable("no") int no) {
		int result = contentservice.deleteContent(no);
		if(result == 1) {
			return "redirect:/project/detail/" + projectNo;
		}else {
			return "redirect:../" + projectNo;
		}
	}
}

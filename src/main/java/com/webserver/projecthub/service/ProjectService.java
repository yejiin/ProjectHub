package com.webserver.projecthub.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webserver.projecthub.dao.ProjectDAO;
import com.webserver.projecthub.vo.Project;

@Service
public class ProjectService {
	
	@Autowired
	ProjectDAO dao;
	
	public List<Project> projectList(String userId) {
		return dao.projectList(userId);
	}
	
	public List<Project> userprojectList(String userId) {
		return dao.userprojectList(userId);
	}
	
	public Project project(int no) {
		return dao.project(no);
	}
	
	public int insertProject(Project project) {
		return dao.insertProject(project);
	}
	
	public int deleteProjcet(int no) {
		return dao.deleteProject(no);
	}
	
}

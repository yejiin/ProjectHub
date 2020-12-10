package com.webserver.projecthub.dao.mapper;

import java.util.List;

import com.webserver.projecthub.vo.Project;

public interface ProjectMapper {
	
	public List<Project> projectList(String userId) throws Exception;
	
	public Project project(int no) throws Exception;

	public int insertProject(Project project) throws Exception;
}

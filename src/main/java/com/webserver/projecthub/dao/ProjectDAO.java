package com.webserver.projecthub.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webserver.projecthub.dao.mapper.ProjectMapper;
import com.webserver.projecthub.vo.Project;

@Repository
public class ProjectDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public List<Project> projectList(String userId) {
		List<Project> list = new ArrayList<Project>();
		ProjectMapper mapper = sqlSession.getMapper(ProjectMapper.class);
		try {
			list = mapper.projectList(userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}
	
	public int insertProject(Project project) {
		int result = 0;
		ProjectMapper mapper = sqlSession.getMapper(ProjectMapper.class);
		
		try {
			result = mapper.insertProject(project);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
}

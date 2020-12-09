package com.webserver.projecthub.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webserver.projecthub.dao.ContentDAO;
import com.webserver.projecthub.vo.Content;

@Service
public class ContentService {
	
	@Autowired
	ContentDAO dao;
	
	public List<Content> websiteList(int projectNo){
		return dao.websiteList(projectNo);
	}
	
	public List<Content> memoList(int projectNo){
		return dao.menoList(projectNo); 
	}
	
	public int insertWebsite(Content content) {
		return dao.insertWebsite(content);
	}
	
	public int insertMemo(Content content) {
		return dao.insertMemo(content);
	}
}

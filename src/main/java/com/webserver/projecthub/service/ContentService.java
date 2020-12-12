package com.webserver.projecthub.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webserver.projecthub.dao.ContentDAO;
import com.webserver.projecthub.vo.Content;
import com.webserver.projecthub.vo.Rank;

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
	
	public Content selectContent(int no) {
		return dao.selectContent(no);
	}
	
	public int updateWebsite(Content content) {
		return dao.updateWebsite(content);
	}
	
	public int updateMemo(Content content) {
		return dao.updateMemo(content);
	}
	
	public int deleteContent(int no) {
		return dao.deleteContent(no);
	}
	
	public List<Rank> rank(){
		return dao.rank();
	}
	
	public List<Content> searchWeb(String keyword){
		return dao.searchWeb(keyword);
	}
}

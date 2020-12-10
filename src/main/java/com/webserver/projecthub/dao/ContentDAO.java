package com.webserver.projecthub.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webserver.projecthub.dao.mapper.ContentMapper;
import com.webserver.projecthub.vo.Content;

@Repository
public class ContentDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public List<Content> websiteList(int projectNo){
		List<Content> list = new ArrayList<Content>();
		ContentMapper mapper = sqlSession.getMapper(ContentMapper.class);
		try {
			list = mapper.websiteList(projectNo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public List<Content> menoList(int projectNo){
		List<Content> list = new ArrayList<Content>();
		ContentMapper mapper = sqlSession.getMapper(ContentMapper.class);
		try {
			list = mapper.memoList(projectNo);
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}
	
	public int insertWebsite(Content content) {
		int result = 0;
		ContentMapper mapper = sqlSession.getMapper(ContentMapper.class);
		
		try {
			result = mapper.insertWebsite(content);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int insertMemo(Content content) {
		int result = 0;
		ContentMapper mapper = sqlSession.getMapper(ContentMapper.class);
		
		try {
			result = mapper.insertMemo(content);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public Content selectContent(int no) {
		Content content = new Content();
		ContentMapper mapper = sqlSession.getMapper(ContentMapper.class);
		
		try {
			content = mapper.selectContent(no);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return content;
	}
	
	public int updateWebsite(Content content) {
		int result = 0;
		ContentMapper mapper = sqlSession.getMapper(ContentMapper.class);
		
		try {
			result = mapper.updateWebsite(content);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public int updateMemo(Content content) {
		int result = 0;
		ContentMapper mapper = sqlSession.getMapper(ContentMapper.class);
		
		try {
			result = mapper.updateMemo(content);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public int deleteContent(int no) {
		int result = 0;
		ContentMapper mapper = sqlSession.getMapper(ContentMapper.class);
		
		try {
			result = mapper.deleteContent(no);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}

package com.webserver.projecthub.dao.mapper;

import java.util.List;

import com.webserver.projecthub.vo.Content;
import com.webserver.projecthub.vo.Rank;

public interface ContentMapper {
	
	public List<Content> websiteList(int projectNo) throws Exception;
	
	public List<Content> memoList(int projectNo) throws Exception;
	
	public int insertWebsite(Content content) throws Exception;

	public int insertMemo(Content content) throws Exception;
	
	public Content selectContent(int no) throws Exception;
	
	public int updateWebsite(Content content) throws Exception;
	
	public int updateMemo(Content content) throws Exception;
	
	public int deleteContent(int no) throws Exception;
	
	public List<Rank> rank() throws Exception;
}

package com.webserver.projecthub.dao.mapper;

import java.util.List;

import com.webserver.projecthub.vo.Content;

public interface ContentMapper {
	
	public List<Content> websiteList(int projectNo) throws Exception;
	
	public List<Content> memoList(int projectNo) throws Exception;
	
	public int insertWebsite(Content content) throws Exception;

	public int insertMemo(Content content) throws Exception;
}

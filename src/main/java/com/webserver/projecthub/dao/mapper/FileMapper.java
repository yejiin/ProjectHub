package com.webserver.projecthub.dao.mapper;

import java.util.List;

import com.webserver.projecthub.vo.Files;

public interface FileMapper {
	
	public int insertFile(Files file) throws Exception;
	
	public List<Files> fileList(int projectNo) throws Exception;
	
	public Files fileNo(int no) throws Exception;
	
	public int deleteFile(int no) throws Exception;
	
	public int deleteAllFile(int projectNo) throws Exception;

}

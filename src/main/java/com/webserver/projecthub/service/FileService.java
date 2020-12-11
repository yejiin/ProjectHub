package com.webserver.projecthub.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webserver.projecthub.dao.FileDAO;
import com.webserver.projecthub.vo.Files;

@Service
public class FileService {

	@Autowired
	FileDAO dao;
	
	public int insertFile(Files file) throws Exception {
		return dao.insertFile(file);
	}
	
	public List<Files> fileList(int projectNo) throws Exception{
		return dao.fileList(projectNo);
	}
	
	public Files fileNo(int no) throws Exception{
		return dao.fileNo(no);
	}
	
	public int deleteFile(int no) throws Exception {
		return dao.deleteFile(no);
	}
}

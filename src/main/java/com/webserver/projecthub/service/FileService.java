package com.webserver.projecthub.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webserver.projecthub.dao.FileDAO;
import com.webserver.projecthub.vo.Files;

@Service
public class FileService {

	@Autowired
	FileDAO dao;
	
	public int insertFile(Files file) {
		return dao.insertFile(file);
	}
}

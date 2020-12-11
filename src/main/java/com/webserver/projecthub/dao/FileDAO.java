package com.webserver.projecthub.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webserver.projecthub.dao.mapper.FileMapper;
import com.webserver.projecthub.vo.Files;

@Repository
public class FileDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	
	public int insertFile(Files file) throws Exception {
		int result = 0;
		FileMapper mapper = sqlSession.getMapper(FileMapper.class);
		result = mapper.insertFile(file);
		return result;	
	}
	
	public List<Files> fileList(int projectNo) throws Exception {
		FileMapper mapper = sqlSession.getMapper(FileMapper.class);
		List<Files> list = new ArrayList<Files>();
		list = mapper.fileList(projectNo);
		return list;
	}
	
	public Files fileNo(int no) throws Exception {
		FileMapper mapper = sqlSession.getMapper(FileMapper.class);
		Files file = new Files();
		file = mapper.fileNo(no);
		return file;
	}
	
	public int deleteFile(int no) throws Exception{
		int result = 0;
		FileMapper mapper = sqlSession.getMapper(FileMapper.class);
		result = mapper.deleteFile(no);
		return result;
		
	}

}

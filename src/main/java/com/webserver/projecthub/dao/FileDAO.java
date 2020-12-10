package com.webserver.projecthub.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webserver.projecthub.dao.mapper.FileMapper;
import com.webserver.projecthub.vo.Files;

@Repository
public class FileDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public int insertFile(Files file) {
		int result = 0;
		FileMapper mapper = sqlSession.getMapper(FileMapper.class);
		
		try {
			result = mapper.insertFile(file);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}

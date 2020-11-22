package com.webserver.projecthub.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mysql.jdbc.log.Log;
import com.webserver.projecthub.dao.mapper.UserMapper;
import com.webserver.projecthub.vo.User;

@Repository
public class UserDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public User login(User user) {
		User result = null;
		
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		
		try {
			result=mapper.login(user);
		} catch(Exception e) {
			e.printStackTrace();
			return result;
		}
		return result;
	}
	
	public int signup(User user) {
		int result = 0;
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		
		try {
			result = mapper.signup(user);
			System.out.println(result);
		}catch(Exception e) {
			e.printStackTrace();
			return result;
		}
		return result;
	}
}

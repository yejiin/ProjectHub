package com.webserver.projecthub.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
		}catch(Exception e) {
			e.printStackTrace();
			return result;
		}
		return result;
	}
	
	public int idChk(User user) {
		int result = 0;
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		try {
			result = mapper.idChk(user);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public List<String> searchUser(String keyword) {
		List<String> list = new ArrayList<String>();
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		try {
			list = mapper.searchUser(keyword);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int searchUserCount(String keyword) {
		int result = 0;
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		try {
			result = mapper.searchUserCount(keyword);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}

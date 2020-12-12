package com.webserver.projecthub.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webserver.projecthub.dao.UserDAO;
import com.webserver.projecthub.vo.User;

@Service
public class UserService {
	
	@Autowired
	UserDAO dao;
	
	public User login(User user) {
		return dao.login(user);
	}
	
	public int signup(User user) {
		return dao.signup(user);
	}
	
	public int idChk(User user) {
		return dao.idChk(user);
	}
	
	public List<String> searchUser(String keyword) {
		return dao.searchUser(keyword);
	}
	
	public int searchUserCount(String keyword) {
		return dao.searchUserCount(keyword);
	}
}

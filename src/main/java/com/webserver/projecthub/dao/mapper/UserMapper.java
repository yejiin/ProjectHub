package com.webserver.projecthub.dao.mapper;

import java.util.List;

import com.webserver.projecthub.vo.User;

public interface UserMapper {
	
	public User login(User user) throws Exception;
	
	public int signup(User user) throws Exception;
	
	public int idChk(User user) throws Exception;
	
	public List<String> searchUser(String keyword) throws Exception;
	
	public int searchUserCount(String keyword) throws Exception;

}

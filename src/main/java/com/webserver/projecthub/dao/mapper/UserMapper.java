package com.webserver.projecthub.dao.mapper;

import com.webserver.projecthub.vo.User;

public interface UserMapper {
	
	public User login(User user) throws Exception;
	
	public int signup(User user) throws Exception;
	
	public int idChk(User user) throws Exception;

}

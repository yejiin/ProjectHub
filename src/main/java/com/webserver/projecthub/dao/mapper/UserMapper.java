package com.webserver.projecthub.dao.mapper;

import com.webserver.projecthub.vo.User;

public interface UserMapper {
	
	public User login(User user);
	
	public int signup(User user);

}

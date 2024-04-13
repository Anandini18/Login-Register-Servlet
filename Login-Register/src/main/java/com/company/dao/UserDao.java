package com.company.dao;

import org.apache.catalina.User;

public interface UserDao {

	boolean addUser(Users user);
	boolean isValidUser(String username, String password);

	

}

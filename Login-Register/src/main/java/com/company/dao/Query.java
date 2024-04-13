package com.company.dao;

public class Query {
	static String correctUserPass = "Select * from user where name=? and password=?";
	static String addingUserQuery = "INSERT INTO user (name, email, password) VALUES (?, ?, ?)";
}

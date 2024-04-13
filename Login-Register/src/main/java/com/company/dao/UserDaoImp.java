package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.catalina.User;

import com.company.util.DBUtil;

public class UserDaoImp implements UserDao{

    // This method checks if a user is valid by comparing the provided username and password with the ones stored in the database
	@Override
	public boolean isValidUser(String username,  String password) {
        // SQL query to select a user from the 'users' table where the username and password match the provided ones
		String query = Query.correctUserPass;
        // Try-with-resources block to automatically close the resources after use
		
		/*
		`Connection` and `PreparedStatement` are interfaces in the Java SQL package (`java.sql`). 
		
		1. `Connection`: This interface provides methods for dealing with a database connection. It's a part of the JDBC (Java Database Connectivity) API. It allows you to perform various operations like creating a SQL Statement, preparing a Statement, beginning a transaction, committing a transaction, rolling back a transaction, etc. You typically get a `Connection` object by calling a method like `DriverManager.getConnection()` or `DataSource.getConnection()`.
		
		2. `PreparedStatement`: This interface extends the `Statement` interface. It represents a precompiled SQL statement that can be executed multiple times without having to recompile for each execution. This interface is useful for executing dynamic SQL commands, where you might have varying numbers of parameters to pass into your SQL commands. The `?` in the SQL query is a placeholder for these parameters. You can set values for these placeholders using various setter methods like `setString()`, `setInt()`, etc. 
		*/
		
		try(Connection connection = DBUtil.getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(query)){
	        // Setting the first parameter of the query (username)
		    preparedStatement.setString(1,username);
	        // Setting the second parameter of the query (password)
		    preparedStatement.setString(2,password);
		
	        // Executing the query and storing the result
		    ResultSet resultSet = preparedStatement.executeQuery();
		    System.out.println("Query is running");
	        // If the result set has a next row (i.e., the user was found), return true; otherwise, return false
		    return resultSet.next();
		    
	} catch(SQLException e) {
        // Print the stack trace for the SQLException
		e.printStackTrace();
        // If an SQLException occurs, return false
		return false;
	}

}

	@Override
    public boolean addUser(Users user) {
        String query = Query.addingUserQuery;

        try ( Connection connection = DBUtil.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            preparedStatement.setString(1, user.getUsername());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPassword());

            int rowsAffected = preparedStatement.executeUpdate();

            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

	
}

package com.cts.dao;

import static org.junit.Assert.*;

import org.junit.Test;

import com.cts.vo.User;

import co.cts.dao.UserDAOImple;

public class UserDAOImpleTest {

	UserDAOImple dao = new UserDAOImple();
	
	// Verification of Insertion of details into User Table
	@Test
	public void testInsertion() {
		User u1 = new User("firstName","lastName","M","email@cts.com",989898987,1,"password");
		assertEquals(1,dao.insertion(u1));
	}

	// Validation of user login
	@Test
	public void testValidation_Success() {
		User u1 = new User("firstName","lastName","M","email@cts.com",989898987,1,"password");
		assertEquals(1,dao.validation(u1));
	}
	
	// Validation fail of user login
		@Test
		public void testValidation_Fail() {
			User u1 = new User("firstName","lastName","M","email123@cts.com",989898987,1,"passwordfail");
			assertEquals(0,dao.validation(u1));
		}

}

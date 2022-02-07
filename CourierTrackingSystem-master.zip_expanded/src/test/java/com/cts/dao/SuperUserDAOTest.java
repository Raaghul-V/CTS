package com.cts.dao;

import static org.junit.Assert.*;

import org.junit.Test;

import com.cts.vo.Admin;

import co.cts.dao.SuperUserDAO;

public class SuperUserDAOTest {

	SuperUserDAO dao = new SuperUserDAO();	
	
	// Test for Validation of SuperUser login
	@Test
	public void testSuValidation_Pass() {
		Admin a1 = new Admin( "firstName", "lastName", "M", "SUemail3@cts.com", 987654320, 1,"password", 100000,  "designation", "permanentAddress", "Coresspondence Address","SU");
		assertEquals(1,dao.suValidation(a1.getEmail(),a1.getPassword()));
	}

	// Test for Validation fail of SuperUser login
	@Test
	public void testSuValidation_Fail() {
		Admin a1 = new Admin( "firstName", "lastName", "M", "email@cts.com", 987654320, 1,"password", 100000,  "designation", "permanentAddress", "Coresspondence Address","SU");
		assertEquals(0,dao.suValidation(a1.getEmail(),a1.getPassword()));
	}
}

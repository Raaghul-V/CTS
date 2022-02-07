package com.cts.dao;

import static org.junit.Assert.*;

import org.junit.Test;

import com.cts.vo.Admin;

import co.cts.dao.AdminStaffDAOImple;

public class AdminDAOImpleTest {
	AdminStaffDAOImple dao = new AdminStaffDAOImple();
	
	// Verification of Insertion of details into Staff Table
	@Test
	public void testInsertion() {
		Admin a1 = new Admin( "firstName", "lastName", "M", "email3@cts.com", 987654320, 1,"password", 100000,  "designation", "permanentAddress", "Coresspondence Address","A");
		assertEquals(1,dao.adminValidation(a1));
	}
	
	// Validation of Admin member login when Staff registration is Approved
	@Test
	public void testAdminValidation_Approved() {
		Admin a1 = new Admin( "firstName", "lastName", "M", "email1@cts.com", 987654320, 1,"password", 100000,  "designation", "permanentAddress", "Coresspondence Address","A");
		assertEquals(1,dao.adminValidation(a1));
	}
	
	// Validation of Admin member login when Staff registration is Rejected
	@Test
	public void testAdminValidation_Rejected() {
		Admin a1 = new Admin( "firstName", "lastName", "M", "email2@cts.com", 987654320, 1,"password", 100000,  "designation", "permanentAddress", "Coresspondence Address","A");
		assertEquals(11,dao.adminValidation(a1));
	}
	
	// Validation of Admin member login when Staff registration is Pending
	@Test
	public void testAdminValidation_Pending() {
		Admin a1 = new Admin( "firstName", "lastName", "M", "email3@cts.com", 987654320, 1,"password", 100000,  "designation", "permanentAddress", "Coresspondence Address","A");
		assertEquals(111,dao.adminValidation(a1));
	}

	// Validation of Staff member login when Staff registration is Approved
	@Test
	public void testStaffValidation_Approved() {
		Admin a2 = new Admin( "StafffirstName", "StafflastName", "M", "Staffemail1@cts.com", 487654320, 2,"Staffpassword", 10000,  "Staffdesignation", "StaffpermanentAddress", "StaffCoresspondence Address","S");
		assertEquals(2,dao.staffValidation(a2));
	}

	// Validation of Staff member login when Staff registration is Rejected
	@Test
	public void testStaffValidation_Rejected() {
		Admin a2 = new Admin( "StafffirstName", "StafflastName", "M", "Staffemail2@cts.com", 487654320, 2,"Staffpassword", 10000,  "Staffdesignation", "StaffpermanentAddress", "StaffCoresspondence Address","S");
		assertEquals(22,dao.staffValidation(a2));
	}
	
	// Validation of Staff member login when Staff registration is Pending
	@Test
	public void testStaffValidation_Pending() {
		Admin a2 = new Admin( "StafffirstName", "StafflastName", "M", "Staffemail3@cts.com", 487654320, 2,"Staffpassword", 10000,  "Staffdesignation", "StaffpermanentAddress", "StaffCoresspondence Address","S");
		assertEquals(222,dao.staffValidation(a2));
	}

}

package com.cts.dao;

import static org.junit.Assert.*;

import org.junit.Test;

import com.cts.vo.Warehouse;

import co.cts.dao.WarehouseDAOImple;

public class WarehouseDAOImpleTest {

	WarehouseDAOImple dao = new WarehouseDAOImple();
	
	// Verification of Insertion of details into Package Table
	@Test
	public void testWarehouseInsertion() {
		Warehouse w1 = new Warehouse("32","Name","Location","9988998878");
		assertEquals(1,dao.warehouseInsertion(w1));
	}
	
	// Validation of Warehouse details
	@Test
	public void testWarehouseValidation_Pass() {
		Warehouse w1 = new Warehouse("32","Name","Location","9988998878");
		assertEquals(1,dao.warehouseValidation(w1));
	}

	// Validation fail of Warehouse details
		@Test
		public void testWarehouseValidation_Fail() {
			Warehouse w1 = new Warehouse("32","Name","FailLocation","9988998878");
			assertEquals(0,dao.warehouseValidation(w1));
		}

}

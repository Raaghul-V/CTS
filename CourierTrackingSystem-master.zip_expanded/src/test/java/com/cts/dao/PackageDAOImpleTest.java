package com.cts.dao;

import static org.junit.Assert.*;

import org.junit.Test;

import co.cts.dao.PackageDAOImple;
import com.cts.vo.Package;

public class PackageDAOImpleTest {

	PackageDAOImple dao = new PackageDAOImple();
	
	// Verification of Insertion of details into Package Table
	@Test
	public void testInsertion() {
		Package p1 = new Package("123", "24-01-2022", "100", "400", "senderAddress", "receiverAddress", "200", "1", "1", "International Delivery", "currentLocation", "InTransit", "24-01-2022");
		assertEquals("1",dao.insertion(p1));
	}

	// Verification of Updation of details in Package Table
	@Test
	public void testUpdation() {
		Package p2 = new Package("123", "24-01-2022", "100", "400", "senderAddress", "receiverAddress", "200", "1", "1", "International Delivery", "currentLocation", "Delivered", "24-01-2022");
		assertEquals("1",dao.insertion(p2));
	}

	// Verification of Updation od details of Quotation in Package Table
	@Test
	public void testSaveQuotation() {
		Package p2 = new Package("123", "24-01-2022", "100", "4000", "senderAddress", "receiverAddress", "300", "1", "1", "International Delivery", "currentLocation", "Delivered", "24-01-2022");
		assertEquals("1",dao.insertion(p2));
	}

}

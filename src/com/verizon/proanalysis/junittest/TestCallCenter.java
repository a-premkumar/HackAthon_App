package com.verizon.proanalysis.junittest;

import static org.junit.Assert.*;

import org.junit.Test;

import com.verizon.proanalysis.dao.CallCenter;
import com.verizon.proanalysis.dao.Users;

public class TestCallCenter {

	@Test
	public void testcallCenterDataAccess() {
		String call="";String location="";
		String time="";
		
		assertNotEquals(null, CallCenter.callCenterDataAccess(call, location, time)); 
	}
	@Test
	public void test1callCenterDataAccess() {
		String call="";String location="";
		String time="";
		
		assertEquals("",  CallCenter.callCenterDataAccess(call, location, time)); 
	}

}

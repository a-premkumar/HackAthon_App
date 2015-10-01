package com.verizon.proanalysis.junittest;

import static org.junit.Assert.*;
import static org.junit.Assert.*;

import org.junit.Test;

import com.verizon.proanalysis.utils.Database;

import static org.junit.Assert.assertEquals;

import org.junit.After;
import org.junit.Before;
public class TestDatabase {

	
	@Before
	public void before()
	{
		System.out.println("Before Database Testing");
	}
	//Positive test case
	@Test
	public void test() {
		assertEquals("test", Database.getInstance("test").getName()); 
	}
	//Negative test case
	@Test
	public void test1() {
		assertNotEquals("", Database.getInstance("test").getName()); 
	}
	@After
	public void after()
	{
		System.out.println("After Database Testing");
	}
	

}

package com.verizon.proanalysis.junittest;

import static org.junit.Assert.*;

import org.bson.Document;
import org.junit.Test;

import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoDatabase;
import com.mongodb.util.JSON;
import com.verizon.proanalysis.dao.Users;
import com.verizon.proanalysis.utils.Constants;
import com.verizon.proanalysis.utils.Database;

public class TestUsers {

	@Test
	public void testUserDataAccess() {
		String type="";String location="";
		int age=0;
		
		assertNotEquals(null, Users.userDataAccess(type, location, age)); 
	}
	@Test
	public void test1UserDataAccess() {
		String type="";String location="";
		int age=0;
		
		assertEquals("", Users.userDataAccess(type, location, age)); 
	}
	@Test
	public void testgetLeastPlansReport()
	{
		MongoDatabase md=Database.getInstance(Constants.DATABASE_PRODATA);
		FindIterable<Document> iterable = md.getCollection(Constants.TABLE_USERS).find();
		String type="leastUsedPlans";
		String location="";
		int age=0;
		
		assertEquals(JSON.serialize(iterable), Users.userDataAccess( type,location, age)); 
	}
	@Test
	public void testgetTopPlansReport()
	{
		MongoDatabase md=Database.getInstance(Constants.DATABASE_PRODATA);
		FindIterable<Document> iterable = md.getCollection(Constants.TABLE_USERS).find();
		String type="topUsedPlans";
		String location="";
		int age=0;
		
		assertEquals(JSON.serialize(iterable), Users.userDataAccess( type,location, age)); 
	}
	@Test
	public void testgetTopProblematicDeviveReport()
	{
		MongoDatabase md=Database.getInstance(Constants.DATABASE_PRODATA);
		FindIterable<Document> iterable = md.getCollection(Constants.TABLE_USERS).find();
		String type=Constants.TOP_PROBLEMATIC_DEVICE;
		String location="";
		int age=0;
		
		assertEquals(JSON.serialize(iterable), Users.userDataAccess( type,location, age)); 
	}
	@Test
	public void testgetTopProvidersReport()
	{
		MongoDatabase md=Database.getInstance(Constants.DATABASE_PRODATA);
		FindIterable<Document> iterable = md.getCollection(Constants.TABLE_USERS).find();
		String type=Constants.TOP_PROVIDERS;
		String location="";
		int age=0;
		
		assertEquals(JSON.serialize(iterable), Users.userDataAccess( type,location, age)); 
	}
	@Test
	public void testgetTopDeviceReport()
	{
		MongoDatabase md=Database.getInstance(Constants.DATABASE_PRODATA);
		FindIterable<Document> iterable = md.getCollection(Constants.TABLE_USERS).find();
		String type=Constants.TYPE_DEVICES;
		String location="";
		int age=0;
		
		assertEquals(JSON.serialize(iterable), Users.userDataAccess( type,location, age)); 
	}
	
	
	

}

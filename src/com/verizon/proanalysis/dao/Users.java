package com.verizon.proanalysis.dao;

import org.bson.Document;

import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoDatabase;
import com.mongodb.util.JSON;
import com.verizon.proanalysis.utils.Database;
import com.verizon.proanalysis.utils.Constants;

public class Users {
	private static MongoDatabase md;
	
	public static String userDataAccess(String type, String location, int age){
		md = Database.getInstance(Constants.DATABASE_PRODATA);
		if(type.equals(Constants.TOP_DEVICES))
			return getTopDeviceReport(location);
		else if(type.equals(Constants.TOP_PROVIDERS))
			return getTopProvidersReport(location);
		else if(type.equals(Constants.TOP_PROBLEMATIC_DEVICE))
			return getTopProblematicDeviveReport();
		else if(type.equals(Constants.TOP_USED_PLANS))
			return getTopPlansReport(location , age);
		else if(type.equals(Constants.LEAST_USED_PLANS))
			return getLeastPlansReport(location, age);
		return "";
	}

	private static String getLeastPlansReport(String location, int age) {
		FindIterable<Document> iterable = md.getCollection(Constants.TABLE_USER).find();
		return JSON.serialize(iterable);
	}

	private static String getTopPlansReport(String location, int age) {
		FindIterable<Document> iterable = md.getCollection(Constants.TABLE_USER).find();
		return JSON.serialize(iterable);
	}

	private static String getTopProblematicDeviveReport() {
		FindIterable<Document> iterable = md.getCollection(Constants.TABLE_USER).find();
		return JSON.serialize(iterable);
	}

	private static String getTopProvidersReport(String location) {
		FindIterable<Document> iterable = md.getCollection(Constants.TABLE_USER).find();
		return JSON.serialize(iterable);
	}

	private static String getTopDeviceReport(String location) {
		FindIterable<Document> iterable = md.getCollection(Constants.TABLE_USER).find();
		return JSON.serialize(iterable);
	}
}

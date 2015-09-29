package com.verizon.proanalysis.dao;

import com.mongodb.client.MongoDatabase;
import com.verizon.proanalysis.utils.Database;
import com.verizon.proanalysis.utils.Constants;

public class Users {
	private static MongoDatabase md;
	
	public static String userDataAccess(String type, String location, int age){
		md = Database.getInstance(Constants.DATABASE_USERS);
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
		// TODO Auto-generated method stub
		return null;
	}

	private static String getTopPlansReport(String location, int age) {
		// TODO Auto-generated method stub
		return null;
	}

	private static String getTopProblematicDeviveReport() {
		// TODO Auto-generated method stub
		return null;
	}

	private static String getTopProvidersReport(String location) {
		// TODO Auto-generated method stub
		return null;
	}

	private static String getTopDeviceReport(String location) {
		// TODO Auto-generated method stub
		return null;
	}
}

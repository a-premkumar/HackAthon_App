package com.verizon.proanalysis.dao;

import com.mongodb.client.MongoDatabase;
import com.verizon.proanalysis.utils.Database;
import com.verizon.proanalysis.utils.Constants;

public class CallCenter {
	private static MongoDatabase md;
	
	public static String callCenterDataAccess(String call, String location, String time){
		md = Database.getInstance(Constants.TABLE_CALL_CENTER);
		if(call.equals(Constants.TOP_DEVICES))
			return getAverageCallDensity(location, time);
		else if(call.equals(Constants.TOP_PROVIDERS))
			return getCallsByReason(location, time);
		else if(call.equals(Constants.TOP_PROBLEMATIC_DEVICE))
			return getCustomerSatisfaction(location, time);
		return "";
	}

	private static String getAverageCallDensity(String location, String time) {
		// TODO Auto-generated method stub
		return null;
	}

	private static String getCallsByReason(String location, String time) {
		// TODO Auto-generated method stub
		return null;
	}

	private static String getCustomerSatisfaction(String location, String time) {
		// TODO Auto-generated method stub
		return null;
	}
}

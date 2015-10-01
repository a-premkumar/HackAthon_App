package com.verizon.proanalysis.dao;

import java.util.HashMap;
import java.util.Map;

import org.bson.Document;

import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoDatabase;
import com.mongodb.util.JSON;
import com.verizon.proanalysis.utils.Database;
import com.verizon.proanalysis.utils.Constants;

public class CallCenter {
	private static MongoDatabase md;
	
	public static String callCenterDataAccess(String call, String location, String time){
		md = Database.getInstance(Constants.DATABASE_PRODATA);
		Map<String,String> response = new HashMap<String,String>();
		response.put("callDensity", getCustomerSatisfaction(location, time));
		response.put("callType", getCallsByReason(location, time));
		response.put("callAverageTime", getAverageCallDensity(location, time));
		return JSON.serialize(response);
	}

	private static String getAverageCallDensity(String location, String time) {
		FindIterable<Document> iterable = md.getCollection(Constants.TABLE_CHART).find(new Document("type", "callAverageTime"));
		return JSON.serialize(iterable);
	}

	private static String getCallsByReason(String location, String time) {
		FindIterable<Document> iterable = md.getCollection(Constants.TABLE_CHART).find(new Document("type", "callType"));
		return JSON.serialize(iterable);
	}

	private static String getCustomerSatisfaction(String location, String time) {
		FindIterable<Document> iterable = md.getCollection(Constants.TABLE_CHART).find(new Document("type", "callDensity"));
		return JSON.serialize(iterable);
	}
}

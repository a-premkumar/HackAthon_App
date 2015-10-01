package com.verizon.proanalysis.dao;

import java.util.HashMap;
import java.util.Map;

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
		Map<String,String> response = new HashMap<String,String>();
		if(type.equals(Constants.TYPE_DEVICE)){
			response.put("deviceSales", getTopDeviceReport(location));
			response.put("deviceProviders", getTopDeviceReport(location));
			response.put("problemStats", getTopProblematicDeviveReport());
			return JSON.serialize(response);
		} else if(type.equals(Constants.TYPE_PLANS)){
			response.put("deviceSales", getTopDeviceReport(location));
			response.put("deviceProviders", getTopDeviceReport(location));
			response.put("problemStats", getTopProblematicDeviveReport());
		} else if(type.equals(Constants.TYPE_FEATURES)){
			response.put("deviceSales", getTopDeviceReport(location));
			response.put("deviceProviders", getTopDeviceReport(location));
			response.put("problemStats", getTopProblematicDeviveReport());
		} else if(type.equals(Constants.TYPE_SERVICES)){
			response.put("deviceSales", getTopDeviceReport(location));
			response.put("deviceProviders", getTopDeviceReport(location));
			response.put("problemStats", getTopProblematicDeviveReport());
		} else if(type.equals(Constants.TYPE_OFFERS)){
			response.put("deviceSales", getTopDeviceReport(location));
			response.put("deviceProviders", getTopDeviceReport(location));
			response.put("problemStats", getTopProblematicDeviveReport());
		}
		return "";
	}

	private static String getLeastPlansReport(String location, int age) {
		FindIterable<Document> iterable = md.getCollection(Constants.TABLE_CHART).find(new Document("type", "leastPlans"));
		return JSON.serialize(iterable);
	}

	private static String getTopPlansReport(String location, int age) {
		FindIterable<Document> iterable = md.getCollection(Constants.TABLE_CHART).find(new Document("type", "topPlans"));
		return JSON.serialize(iterable);
	}

	private static String getTopProblematicDeviveReport() {
		FindIterable<Document> iterable = md.getCollection(Constants.TABLE_CHART).find(new Document("type", "problemStats"));
		return JSON.serialize(iterable);
	}

	private static String getTopProvidersReport(String location) {
		FindIterable<Document> iterable = md.getCollection(Constants.TABLE_CHART).find(new Document("type", "deviceProviders"));
		return JSON.serialize(iterable);
	}

	private static String getTopDeviceReport(String location) {
		FindIterable<Document> iterable = md.getCollection(Constants.TABLE_CHART).find(new Document("type", "deviceSales"));
		return JSON.serialize(iterable);
	}
}

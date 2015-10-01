package com.verizon.proanalysis.utils;

import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoDatabase;

public class Database {
	
	private Database(){}
	
	public static final MongoDatabase getInstance(String dbName){
		MongoClientURI uri = new MongoClientURI(Constants.DATABASE_CONNECTION_URI);
		MongoClient mongoClient = new MongoClient(uri);
		
		//MongoClient mongoClient = new MongoClient();
		MongoDatabase database = mongoClient.getDatabase(dbName);
		return database;
	}
}

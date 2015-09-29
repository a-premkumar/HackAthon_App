package com.verizon.proanalysis.utils;

import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoDatabase;

public class Database {
	
	private Database(){}
	
	public static final MongoDatabase getInstance(String dbName){
		//MongoClientURI uri = new MongoClientURI("mongodb://cloudfoundry-test_2p6otl8c_841b7q4b_tmtlqeaa:eb5d00ac-2a4f-4beb-80ad-9da11cff5a70@ds027908.mongolab.com:27908/cloudfoundry-test_2p6otl8c_841b7q4b");
		//MongoClient mongoClient = new MongoClient(uri);
		MongoClient mongoClient = new MongoClient();
		MongoDatabase database = mongoClient.getDatabase(dbName);
		return database;
	}
}

package com.proanalysis.logic;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mongodb.Block;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.AggregateIterable;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;
import com.mongodb.client.FindIterable;
import com.mongodb.util.JSONSerializers;
import com.mongodb.util.JSON;

/**
 * Servlet implementation class Sample
 */
@WebServlet("/Sample")
public class Sample extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	String userName;
	String password;
//	String category;
	RequestDispatcher requestDispatcher;
    public Sample() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//MongoClientURI uri = new MongoClientURI("mongodb://cloudfoundry-test_2p6otl8c_841b7q4b_tmtlqeaa:eb5d00ac-2a4f-4beb-80ad-9da11cff5a70@ds027908.mongolab.com:27908/cloudfoundry-test_2p6otl8c_841b7q4b");
		//MongoClient mongoClient = new MongoClient(uri);
		//MongoDatabase db = mongoClient.getDatabase(uri.getDatabase());
		/*MongoClient mongoClient = new MongoClient();
		MongoDatabase db = mongoClient.getDatabase("test");
		
		
		FindIterable<Document> iterable = db.getCollection("restaurants").find(new Document("cuisine", "Indian"));
		System.out.println(JSON.serialize(iterable));
		response.getWriter().write(JSON.serialize(iterable));*/
//		response.getWriter().write("Servlet is Working!");
		userName = request.getParameter("userName");
		password = request.getParameter("password");
//		category = request.getParameter("category");
//		if(category == null  && userName != null && password != null && !userName.equals("") && !password.equals("")){
		if(userName != null && password != null && !userName.equals("") && !password.equals("")){
			request.setAttribute("respVal", "welcome");
			requestDispatcher = request.getRequestDispatcher("dashboard.jsp");
			requestDispatcher.forward(request, response);
		}
	}
}

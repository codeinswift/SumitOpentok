package com.tokbox;

import java.io.BufferedReader;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

/**
 * Servlet implementation class TakeJson
 */
@WebServlet("/TakeJson")
public class TakeJson extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse response)
			throws ServletException, IOException {

		StringBuffer jb = new StringBuffer();
		String line = null;
		try {
			BufferedReader reader = req.getReader();
			while ((line = reader.readLine()) != null)
				jb.append(line);
		} catch (Exception e) { 
		}

		try {
			JSONParser parser = new JSONParser();
			Object obj = parser.parse(jb.toString());
			JSONObject jsonObject = (JSONObject) obj;
			
			String archiveID=(String)jsonObject.get("id");
			String archiveStatus=(String)jsonObject.get("status");
			String eventOnJson=(String)jsonObject.get("event");
			String name=(String)jsonObject.get("name");
	//		String partnerId=(String)jsonObject.get("partnerId");
			String url=(String)jsonObject.get("url");
		//	String size=(String)jsonObject.get("size");

			
			req.setAttribute("status", archiveStatus);
			req.setAttribute("id",archiveID );
			req.setAttribute("event", eventOnJson);
			req.setAttribute("name",name );
	//		req.setAttribute("partnerId",partnerId );
			req.setAttribute("url",url );
	//		req.setAttribute("size",size );
			
			System.out.println("Archive ID is:"+archiveID);
			System.out.println(" status:"+archiveStatus);
			System.out.println("event : "+eventOnJson); 
			System.out.println(" name : "+name);		
//			System.out.println("partnerId  : "+partnerId);
			System.out.println(" url : "+url);		
//			System.out.println(" size : "+size);		
	
			
			req.getRequestDispatcher("/Callback.jsp").forward(req, response);


			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}

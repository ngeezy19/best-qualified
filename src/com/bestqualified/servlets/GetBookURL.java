package com.bestqualified.servlets;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

import com.bestqualified.util.SignedRequestsHelper;
import com.google.appengine.api.urlfetch.FetchOptions;
import com.google.appengine.api.urlfetch.HTTPMethod;
import com.google.appengine.api.urlfetch.HTTPRequest;
import com.google.appengine.api.urlfetch.HTTPResponse;
import com.google.appengine.api.urlfetch.URLFetchService;
import com.google.appengine.api.urlfetch.URLFetchServiceFactory;

public class GetBookURL extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2347722844112906995L;
	private static final String AWS_ACCESS_KEY_ID = "AKIAJWQ3Z2P6ALOAAHDQ";
	private static final String AWS_SECRET_KEY = "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";
	private static final String ENDPOINT = "webservices.amazon.com";
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		SignedRequestsHelper helper;

        try {
            helper = SignedRequestsHelper.getInstance(ENDPOINT, AWS_ACCESS_KEY_ID, AWS_SECRET_KEY);
        } catch (Exception e) {
            e.printStackTrace();
            return;
        }
        
        String requestUrl = null;

        Map<String, String> params = new HashMap<String, String>();

        params.put("Service", "AWSECommerceService");
        params.put("Operation", "ItemSearch");
        params.put("AWSAccessKeyId", "AKIAJWQ3Z2P6ALOAAHDQ");
        params.put("AssociateTag", "bqdemo-20");
        params.put("SearchIndex", "Books");
        params.put("ResponseGroup", "EditorialReview,Images,ItemAttributes");
        params.put("BrowseNode", "2698");
        params.put("Sort", "salesrank");
        
        requestUrl = helper.sign(params);
        System.out.println(requestUrl);
        URL url = new URL(requestUrl);
        FetchOptions options = FetchOptions.Builder
        		.doNotFollowRedirects()
        		.disallowTruncate();
        HTTPRequest request = new HTTPRequest(url, HTTPMethod.GET, options);
        URLFetchService urlfetch = URLFetchServiceFactory.getURLFetchService();
        HTTPResponse response = urlfetch.fetch(request);
        String r = new String(response.getContent());
       
        
       /* DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
        try {
			DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
			Document doc = dBuilder.parse(new InputSource(new ByteArrayInputStream(r.getBytes())));
			doc.getDocumentElement().normalize();
			NodeList topSellers = doc.getElementsByTagName("TopSellers");
			NodeList NewReleases = doc.getElementsByTagName("NewReleases");
			NodeList TopItemSet = doc.getElementsByTagName("TopItemSet");
			
		} catch (ParserConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SAXException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
        
        resp.getWriter().write(r);

        
		
	}

}

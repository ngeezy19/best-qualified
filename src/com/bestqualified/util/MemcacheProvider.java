package com.bestqualified.util;

import com.google.appengine.api.memcache.MemcacheService;
import com.google.appengine.api.memcache.MemcacheServiceFactory;

public class MemcacheProvider {

	
	public static final MemcacheService JOBS = MemcacheServiceFactory
			.getMemcacheService("jobs");
	public static final MemcacheService RECRUITER = MemcacheServiceFactory
			.getMemcacheService("recruiter");
<<<<<<< HEAD
	
	public static final MemcacheService COMMUNITY = MemcacheServiceFactory
			.getMemcacheService("community");
	
	public static final MemcacheService PROFESSIONAL = MemcacheServiceFactory
			.getMemcacheService("professional");
	public static final MemcacheService USER = MemcacheServiceFactory
			.getMemcacheService("user");
=======
	public static final MemcacheService COMMUNITIES = MemcacheServiceFactory
			.getMemcacheService("community");
	public static final MemcacheService ARTICLES = MemcacheServiceFactory
			.getMemcacheService("articles");
>>>>>>> 3c2e5b13f428c548f877c3f02fc92f5e16099bc2
	
}

package com.bestqualified.util;

import com.google.appengine.api.memcache.MemcacheService;
import com.google.appengine.api.memcache.MemcacheServiceFactory;

public class MemcacheProvider {

	
	public static final MemcacheService JOBS = MemcacheServiceFactory
			.getMemcacheService("jobs");
	public static final MemcacheService RECRUITER = MemcacheServiceFactory
			.getMemcacheService("recruiter");
	public static final MemcacheService COMMUNITIES = MemcacheServiceFactory
			.getMemcacheService("community");
	public static final MemcacheService ARTICLES = MemcacheServiceFactory
			.getMemcacheService("articles");
	
}

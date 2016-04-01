package com.bestqualified.util;

import java.util.List;

import com.bestqualified.entities.EducationLevel;
import com.google.appengine.api.memcache.MemcacheService;
import com.google.appengine.api.memcache.MemcacheServiceFactory;

public class MemcacheProvider {

	public static final MemcacheService EDUCATION_LEVEL = MemcacheServiceFactory
			.getMemcacheService("educationLevel");
	
	
}

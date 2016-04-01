package com.bestqualified.controllers;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import com.bestqualified.entities.User;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.StringConstants;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.EntityNotFoundException;
import com.google.appengine.api.datastore.FetchOptions;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.CompositeFilter;
import com.google.appengine.api.datastore.Query.CompositeFilterOperator;
import com.google.appengine.api.datastore.Query.Filter;
import com.google.appengine.api.datastore.Query.FilterOperator;
import com.google.appengine.api.datastore.Query.FilterPredicate;
import com.google.appengine.api.datastore.Transaction;
import com.google.appengine.api.datastore.TransactionOptions;


public class GeneralController {

	public static final DatastoreService ds = DatastoreServiceFactory
			.getDatastoreService();
	private static Transaction txn = null;

	public static Iterator<Entity> findAll(String className) {
		Query q = new Query(className);
		PreparedQuery pq = ds.prepare(q);
		return pq.asIterator();
	}

	public static Entity findByKey(Key key) {
		try {
			return ds.get(key);
		} catch (EntityNotFoundException e) {

			return null;
		}
	}

	public static void delete(Key key) {
		txn = ds.beginTransaction();
		ds.delete(key);
		txn.commit();
	}

	public static void edit(Entity e) {
		txn = ds.beginTransaction();
		ds.put(e);
		txn.commit();
	}

	public static void create(Entity... e) {
		txn = ds.beginTransaction();
		List<Entity> entities = new ArrayList<>();
		for (Entity e1 : e) {
			entities.add(e1);
		}
		ds.put(entities);
		txn.commit();
	}

	public static boolean userIdExist(String sid) {
		Key key = KeyFactory.createKey(User.class.getSimpleName(), sid);
		try {
			Entity e = ds.get(key);
		} catch (EntityNotFoundException e) {
			return false;
		}
		return true;

	}

	public static boolean userEmailExist(String email) {
		Query q = new Query(User.class.getSimpleName());
		q.setKeysOnly();
		q.setFilter(new Query.FilterPredicate("email", FilterOperator.EQUAL,
				email));
		PreparedQuery pq = ds.prepare(q);
		if (pq.countEntities(FetchOptions.Builder.withDefaults()) >= 1) {
			return true;
		} else {
			return false;
		}
	}

	public static void createWithCrossGroup(Entity... entities) {
		List<Entity> l = Arrays.asList(entities);
		txn = ds.beginTransaction(TransactionOptions.Builder.withXG(true));
		ds.put(l);
		txn.commitAsync();

	}

	public static User findSocialUser(String email) {
		User u = null;
		Query q = new Query("User");
		q.setFilter(new Query.FilterPredicate(StringConstants.EMAILS,
				FilterOperator.EQUAL, email));
		PreparedQuery pq = ds.prepare(q);
		if (pq.countEntities(FetchOptions.Builder.withDefaults()) == 1) {
			Entity e = pq.asSingleEntity();
			u = EntityConverter.entityConverterToUser(e);
			return u;
		} else {
			return null;
		}
	}

	public static User getUserByCredentials(String email, String password) {
		Query q = new Query(User.class.getSimpleName());
		Filter f = new CompositeFilter(CompositeFilterOperator.OR, Arrays.asList(
			     new FilterPredicate("emails", FilterOperator.EQUAL, email),
			     new CompositeFilter(CompositeFilterOperator.AND, Arrays.<Filter>asList(
			         new FilterPredicate("email", FilterOperator.EQUAL, email),
			         new FilterPredicate("password", FilterOperator.EQUAL, Util.toSHA512(password))))));
		q.setFilter(f);
		PreparedQuery pq = ds.prepare(q);
		if(pq.countEntities(FetchOptions.Builder.withDefaults()) == 1) {
			User u = EntityConverter.entityConverterToUser(pq.asSingleEntity());
			return u;
		} else {
			return null;
		}
	}
}

package com.bestqualified.util;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.bestqualified.entities.Award;
import com.bestqualified.entities.CandidateProfile;
import com.bestqualified.entities.CareerLevel;
import com.bestqualified.entities.CareerSummary;
import com.bestqualified.entities.Certification;
import com.bestqualified.entities.Company;
import com.bestqualified.entities.Education;
import com.bestqualified.entities.EducationLevel;
import com.bestqualified.entities.Job;
import com.bestqualified.entities.JobCategory;
import com.bestqualified.entities.JobRegion;
import com.bestqualified.entities.Recruiter;
import com.bestqualified.entities.User;
import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.Text;

public class EntityConverter {

	public static Entity awardToEntity(Award a) {
		Entity ent = new Entity(Award.class.getSimpleName());
		ent.setUnindexedProperty(StringConstants.DATE, a.getDate());
		ent.setUnindexedProperty(StringConstants.DESCRIPTION,
				a.getDescription());
		ent.setUnindexedProperty(StringConstants.NAME, a.getName());
		return ent;
	}

	public static Award entityToAward(Entity e) {
		Award a = new Award();
		a.setDate((Date) e.getProperty(StringConstants.DATE));
		a.setDescription((String) e.getProperty(StringConstants.DESCRIPTION));
		a.setId(e.getKey());
		a.setName((String) e.getProperty(StringConstants.NAME));
		return a;
	}

	public static Entity careerLevelToEntity(CareerLevel cl) {
		Entity e = new Entity(CareerLevel.class.getSimpleName());
		e.setUnindexedProperty(StringConstants.NAME, cl.getName());
		return e;

	}

	public static CareerLevel entityToCareerLevel(Entity e) {
		CareerLevel cl = new CareerLevel();
		cl.setId(e.getKey());
		cl.setName((String) e.getProperty(StringConstants.NAME));
		return cl;
	}

	public static Entity careerSummaryToEntity(CareerSummary cs) {

		Entity e = new Entity(CareerSummary.class.getSimpleName());
		e.setUnindexedProperty(StringConstants.JOB_TYPE, cs.getJobType());
		e.setUnindexedProperty(StringConstants.JOB_SPECIALIZATION,
				cs.getSpecialization());
		e.setUnindexedProperty(StringConstants.YEARS_OF_EXPERIENCE,
				cs.getYearsOfExperience());
		return e;
	}

	public static CareerSummary entityToCareerSummary(Entity e) {
		CareerSummary cs = new CareerSummary();
		cs.setId(e.getKey());
		cs.setJobType((Key) e.getProperty(StringConstants.JOB_TYPE));
		cs.setSpecialization((Key) e
				.getProperty(StringConstants.JOB_SPECIALIZATION));
		cs.setYearsOfExperience((int) e
				.getProperty(StringConstants.YEARS_OF_EXPERIENCE));
		return cs;
	}

	public static Entity certificationToEntity(Certification c) {
		Entity e = new Entity(Certification.class.getSimpleName());
		e.setUnindexedProperty(StringConstants.NAME, c.getName());
		e.setUnindexedProperty(StringConstants.DATE, c.getDate());
		return e;
	}

	public static Certification entityToCertification(Entity e) {
		Certification c = new Certification();
		c.setId(e.getKey());
		c.setDate((Date) e.getProperty(StringConstants.DATE));
		c.setName((String) e.getProperty(StringConstants.NAME));
		return c;

	}

	public static Entity companyToEntity(Company c) {
		Entity e = null;
		if (c.getId() == null) {
			e = new Entity(Company.class.getSimpleName());
		} else {
			e = new Entity(c.getId());
		}
		e.setUnindexedProperty(StringConstants.INDUSTRIES, c.getIndustries());
		e.setUnindexedProperty(StringConstants.LOCATION, c.getLocation());
		e.setUnindexedProperty(StringConstants.ADDRESS, c.getAddress());
		e.setUnindexedProperty(StringConstants.LINKEDIN_PAGE, c.getLinkedIn());
		e.setUnindexedProperty(StringConstants.FACEBOOK_PAGE, c.getFacebook());
		e.setUnindexedProperty(StringConstants.TWITTER_PAGE, c.getTwitter());
		e.setUnindexedProperty(StringConstants.GOOGLE_PAGE, c.getGooglePlus());
		e.setUnindexedProperty(StringConstants.DESCRIPTION, c.getDescription());
		e.setUnindexedProperty(StringConstants.TAGLINE, c.getTagline());
		e.setUnindexedProperty(StringConstants.RECRUITERS, c.getRecruiter());
		return e;
	}

	public static Company entityToCompany(Entity e) {
		Company c = new Company();
		c.setId(e.getKey());
		c.setAddress((String) e.getProperty(StringConstants.ADDRESS));
		c.setCompanyName((String) e
				.getProperty(StringConstants.COMPANY_WEBSITE));
		c.setCompanyWebsite((String) e
				.getProperty(StringConstants.COMPANY_WEBSITE));
		c.setDescription((String) e.getProperty(StringConstants.DESCRIPTION));
		c.setFacebook((String) e.getProperty(StringConstants.FACEBOOK_PAGE));
		c.setGooglePlus((String) e.getProperty(StringConstants.GOOGLE_PAGE));
		c.setIndustries((List<Key>) e.getProperty(StringConstants.INDUSTRIES));
		c.setLinkedIn((String) e.getProperty(StringConstants.LINKEDIN_PAGE));
		c.setLocation((Key) e.getProperty(StringConstants.LOCATION));
		c.setRecruiter((List<Key>) e.getProperty(StringConstants.RECRUITERS));
		c.setTagline((String) e.getProperty(StringConstants.TAGLINE));
		c.setTwitter((String) e.getProperty(StringConstants.TWITTER_PAGE));
		return c;
	}

	public static Entity educationToEntity(Education edu) {
		Entity e = new Entity(Education.class.getSimpleName());
		e.setUnindexedProperty(StringConstants.INSTITUITION,
				edu.getInstitution());
		e.setUnindexedProperty(StringConstants.COURSE, edu.getCourse());
		e.setUnindexedProperty(StringConstants.TO, edu.getTo());
		e.setUnindexedProperty(StringConstants.COUNTRY, edu.getCountry());
		e.setUnindexedProperty(StringConstants.QUALIFICATION,
				edu.getQualification());
		e.setUnindexedProperty(StringConstants.CLASSIFICATION,
				edu.getClassification());
		e.setUnindexedProperty(StringConstants.FROM, edu.getFrom());
		return e;
	}

	public static Education entityToEducation(Entity e) {
		Education edu = new Education();
		edu.setId(e.getKey());
		edu.setClassification((String) e
				.getProperty(StringConstants.CLASSIFICATION));
		edu.setCountry((String) e.getProperty(StringConstants.COUNTRY));
		edu.setCourse((String) e.getProperty(StringConstants.COURSE));
		edu.setFrom((Date) e.getProperty(StringConstants.FROM));
		edu.setInstitution((String) e.getProperty(StringConstants.INSTITUITION));
		edu.setQualification((Key) e.getProperty(StringConstants.QUALIFICATION));
		edu.setTo((Date) e.getProperty(StringConstants.TO));
		return edu;
	}

	public static EducationLevel entityToEducationLevel(Entity e) {
		EducationLevel el = new EducationLevel();
		el.setId(e.getKey());
		el.setAbbr((String) e.getProperty(StringConstants.ABBR));
		el.setName((String) e.getProperty(StringConstants.NAME));
		return el;
	}

	public static Entity educationLevelToEntity(EducationLevel el) {
		Entity e = new Entity(EducationLevel.class.getSimpleName());
		e.setUnindexedProperty(StringConstants.NAME, el.getName());
		e.setUnindexedProperty(StringConstants.ABBR, el.getAbbr());
		return e;
	}

	public static Entity jobToEntity(Job j) {
		Entity e = new Entity(Job.class.getSimpleName());

		e.setIndexedProperty(StringConstants.CLOSING_DATE, j.getClosingDate());
		e.setIndexedProperty(StringConstants.CAREER_LEVEL, j.getCareerLevel());
		e.setIndexedProperty(StringConstants.LOCATION, j.getLocation());
		e.setIndexedProperty(StringConstants.EDUCATION_LEVEL,
				j.getEducationLevel());
		e.setIndexedProperty(StringConstants.JOB_TYPE, j.getJobType());
		e.setIndexedProperty(StringConstants.EMPLOYER, j.getEmployer());
		e.setIndexedProperty(StringConstants.JOB_TITLE, j.getJobTitle());
		e.setUnindexedProperty(StringConstants.SALARY_CURRENCY,
				j.getSalaryCurrency());
		e.setUnindexedProperty(StringConstants.ALLOW_LINKEDIN_APPLICATION,
				j.isAllowLinkedInApplication());
		e.setUnindexedProperty(StringConstants.ALLOW_FACEBOOK_APPLICATION,
				j.isAllowFacebookApplication());
		e.setUnindexedProperty(StringConstants.POSITION_FILLED,
				j.isPositionFilled());
		e.setUnindexedProperty(StringConstants.JOB_CATEGORY, j.getJobCategory());
		e.setUnindexedProperty(StringConstants.APPLICANTS, j.getApplicants());
		e.setUnindexedProperty(StringConstants.DATE_POSTED, j.getDatePosted());
		e.setUnindexedProperty(StringConstants.DESCRIPTION, j.getDescription());
		e.setUnindexedProperty(StringConstants.INVITES_SENT, j.getInvitesSent());
		e.setUnindexedProperty(StringConstants.CUSTOM_ATTRIBUTES,
				j.getCustomAttributes());
		e.setProperty(StringConstants.SALARY_RANGE, j.getSalaryRange());
		e.setProperty(StringConstants.EXPERIENCE, j.getExperience());
		e.setUnindexedProperty(StringConstants.APPLICATION_URL,
				j.getApplicationUrl());

		return e;

	}

	@SuppressWarnings("unchecked")
	public static Job entityToJob(Entity e) {
		Job j = new Job();
		j.setId(e.getKey());
		j.setClosingDate((Date) e.getProperty(StringConstants.CLOSING_DATE));
		j.setCareerLevel((String) e.getProperty(StringConstants.CAREER_LEVEL));
		j.setLocation((String) e.getProperty(StringConstants.LOCATION));
		j.setEducationLevel((String) e
				.getProperty(StringConstants.EDUCATION_LEVEL));
		j.setJobType((String) e.getProperty(StringConstants.JOB_TYPE));
		j.setEmployer((Key) e.getProperty(StringConstants.EMPLOYER));
		j.setJobTitle((String) e.getProperty(StringConstants.JOB_TITLE));
		j.setSalaryCurrency((String) e
				.getProperty(StringConstants.SALARY_CURRENCY));
		j.setAllowFacebookApplication((boolean) e
				.getProperty(StringConstants.ALLOW_FACEBOOK_APPLICATION));
		j.setAllowLinkedInApplication((boolean) e
				.getProperty(StringConstants.ALLOW_LINKEDIN_APPLICATION));
		j.setPositionFilled((boolean) e
				.getProperty(StringConstants.POSITION_FILLED));
		j.setJobCategory((List<String>) e
				.getProperty(StringConstants.JOB_CATEGORY));
		j.setApplicants((List<Key>) e.getProperty(StringConstants.APPLICANTS));
		j.setDatePosted((Date) e.getProperty(StringConstants.DATE_POSTED));
		j.setDescription((String) e.getProperty(StringConstants.DESCRIPTION));
		j.setInvitesSent((List<Key>) e
				.getProperty(StringConstants.INVITES_SENT));
		j.setCustomAttributes((Text) e
				.getProperty(StringConstants.CUSTOM_ATTRIBUTES));
		j.setExperience((String) e.getProperty(StringConstants.EXPERIENCE));
		j.setApplicationUrl((String) e
				.getProperty(StringConstants.APPLICATION_URL));
		return j;
	}

	public static Entity JobCategoryToEntity(JobCategory jc) {
		Entity e = new Entity(JobCategory.class.getSimpleName());
		e.setUnindexedProperty(StringConstants.NAME, jc.getName());
		return e;
	}

	public static JobCategory entityToJobCategory(Entity e) {
		JobCategory jc = new JobCategory();
		jc.setId(e.getKey());
		jc.setName((String) e.getProperty(StringConstants.NAME));
		return jc;
	}

	public static JobRegion entityToJobRegion(Entity e) {
		JobRegion jr = new JobRegion();
		jr.setCountry((String) e.getProperty(StringConstants.COUNTRY));
		jr.setId(e.getKey());
		jr.setState((String) e.getProperty(StringConstants.STATE));
		return jr;
	}

	public static Entity jobRegionToEntity(JobRegion jr) {
		Entity e = new Entity(JobRegion.class.getSimpleName());
		e.setUnindexedProperty(StringConstants.STATE, jr.getState());
		e.setUnindexedProperty(StringConstants.COUNTRY, jr.getCountry());
		return e;
	}

	public static Entity recruiterToEntity(Recruiter r) {
		Entity e = null;
		if (r.getId() == null) {
			e = new Entity(Recruiter.class.getSimpleName());
		} else {
			e = new Entity(r.getId());
		}
		e.setIndexedProperty("userKey", r.getUserKey());
		e.setUnindexedProperty(StringConstants.COMPANY, r.getCompany());
		e.setUnindexedProperty(StringConstants.CVS,
				new ArrayList<BlobKey>(r.getCvs()));
		e.setUnindexedProperty(StringConstants.JOBS,
				new ArrayList<Key>(r.getJobs()));
		e.setUnindexedProperty(StringConstants.PROFILE,
				new ArrayList<Key>(r.getProfile()));
		e.setUnindexedProperty(StringConstants.SEARCH_RESULT,
				new ArrayList<Key>(r.getSearchResult()));
		return e;
	}

	public static Recruiter entityToRecruiter(Entity e) {
		Recruiter r = new Recruiter();
		r.setId(e.getKey());
		r.setUserKey((Key) e.getProperty("userKey"));
		r.setCompany((List<Key>) e.getProperty(StringConstants.COMPANY));
		List<BlobKey> blobKeys = (ArrayList<BlobKey>) e
				.getProperty(StringConstants.CVS);
		r.setCvs(new HashSet<BlobKey>(blobKeys));
		List<Key> keys = (ArrayList<Key>) e.getProperty(StringConstants.CVS);
		keys = (ArrayList<Key>) e.getProperty(StringConstants.PROFILE);
		r.setProfile(new HashSet<Key>(keys));
		keys = (ArrayList<Key>) e.getProperty(StringConstants.SEARCH_RESULT);
		r.setSearchResult(new HashSet<Key>(keys));
		return r;
	}

	

	public static Entity candidateProfileToEntity(CandidateProfile cp) {
		Entity e = new Entity(cp.getId());
		e.setIndexedProperty("candidateID", cp.getCandidateId());
		e.setIndexedProperty("careerLevel", cp.getCareerLevel());
		e.setIndexedProperty("currentLocation", cp.getCurrentLocation());
		e.setUnindexedProperty("profileViewers", cp.getProfileViewers());
		e.setUnindexedProperty("jobsApplied", cp.getJobsApplied());
		e.setUnindexedProperty("currentEmployer", cp.getCurrentEmployer());
		e.setUnindexedProperty("cvDownloaders", cp.getCvDownloaders());
		e.setUnindexedProperty("workExperience", cp.getWorkExperience());
		e.setUnindexedProperty("education", cp.getEducation());
		e.setUnindexedProperty("awards", cp.getAwards());
		e.setUnindexedProperty("certifications", cp.getCertifications());
		e.setUnindexedProperty("careerSummary", cp.getCareerSummary());
		e.setUnindexedProperty("profileDescription", cp.getProfileDescription());
		e.setUnindexedProperty("nationality", cp.getNationality());
		e.setUnindexedProperty("lga", cp.getLga());
		e.setUnindexedProperty("stateOfOrigin", cp.getStateOfOrigin());
		e.setUnindexedProperty("pictures", cp.getPictures());
		return e;
	}
	
	public static CandidateProfile entityToCandidateProfile(Entity e , Key userKey) {
		CandidateProfile cp = new CandidateProfile(userKey);
		cp.setAwards((List<Key>) e.getProperty("awards"));
		cp.setCareerLevel((Key) e.getProperty("careerLevel"));
		cp.setCareerSummary((Key) e.getProperty("careerSummary"));
		cp.setCertifications((List<Key>) e.getProperty("certifications"));
		cp.setCurrentEmployer((String) e.getProperty("currentEmployer"));
		cp.setCurrentLocation((Key) e.getProperty("currentLocation"));
		cp.setCvDownloaders((Set<Key>) e.getProperty("cvDownloaders"));
		cp.setEducation((List<Key>) e.getProperty("education"));
		cp.setId(e.getKey());
		List<Key> l = (List<Key>)e.getProperty("jobsApplied");
		Set<Key> s1 = new HashSet<Key>();
		s1.addAll(l);
		cp.setJobsApplied(s1);
		cp.setLga((String) e.getProperty("lga"));
		cp.setNationality((String) e.getProperty("nationality"));
		cp.setPictures((List<BlobKey>) e.getProperty("pictures"));
		cp.setProfileDescription((Text) e.getProperty("profileDescription"));
		cp.setStateOfOrigin((String) e.getProperty("stateOfOrigin"));
		cp.setWorkExperience((List<Key>) e.getProperty("workExperience"));
		
		return cp;
	}
	
	public static Entity userToEntity(User user) {
		Entity e = new Entity(user.getUserKey());
		e.setIndexedProperty("email", user.getEmail());
		e.setIndexedProperty("phone", user.getPhone());
		e.setIndexedProperty("password", user.getPassword());
		e.setUnindexedProperty("firstName", user.getFirstName());
		e.setUnindexedProperty("lastName", user.getLastName());
		e.setIndexedProperty("userType", user.getUserType());
		e.setUnindexedProperty("joinedDate", user.getJoinedDate());
		e.setUnindexedProperty("verified", user.isVerified());
		e.setUnindexedProperty("userInfo", user.getUserInfo());
		e.setIndexedProperty("birthDate", user.getBirthDate());
		e.setIndexedProperty("emails", user.getEmails());
		e.setIndexedProperty("facebookID", user.getFacebookID());
		e.setIndexedProperty("googleID", user.getGoogleID());
		e.setIndexedProperty("linkedInID", user.getLinkedInID());
		e.setIndexedProperty("twitterID", user.getTwitterID());
		e.setUnindexedProperty("gender", user.getGender());
		e.setUnindexedProperty("profilePicture", user.getProfilePicture());
		return e;
	}

	public static User entityConverterToUser(Entity e) {
		User u = new User((String) (e.getProperty(StringConstants.FIRST_NAME)),
				(String) e.getProperty(StringConstants.LAST_NAME));
		u.setBirthDate((Date) e.getProperty("birthDate"));
		u.setEmail((String) e.getProperty(StringConstants.EMAIL));
		u.setEmails((List<String>) e.getProperty(StringConstants.EMAILS));
		u.setFacebookID((String) e.getProperty(StringConstants.FACEBOOK_ID));
		u.setFirstName((String) e.getProperty(StringConstants.FIRST_NAME));
		u.setGender((String) e.getProperty(StringConstants.GENDER));
		u.setGoogleID((String) e.getProperty(StringConstants.GOOGLE_ID));
		u.setJoinedDate((Date) e.getProperty("joinedDate"));
		u.setLastName((String) e.getProperty(StringConstants.LAST_NAME));
		u.setLinkedInID((String) e.getProperty(StringConstants.LINKEDIN_ID));
		u.setPassword((String) e.getProperty(StringConstants.PASSWORD));
		u.setPhone((String) e.getProperty(StringConstants.PHONE));
		u.setProfilePicture((BlobKey) e.getProperty(StringConstants.PROFILE_PICTURE));
		u.setTwitterID((String) e.getProperty(StringConstants.TWITTER_ID));
		u.setUserInfo((Key) e.getProperty("userInfo"));
		u.setUserKey(e.getKey());
		u.setUserType((String) e.getProperty("userType"));
		u.setVerified((boolean) e.getProperty("verified"));
		return u;
	}

}

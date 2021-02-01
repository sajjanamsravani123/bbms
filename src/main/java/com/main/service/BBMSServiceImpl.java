package com.main.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.main.dao.BBMSDao;
import com.main.model.Admin;
import com.main.model.Donor;
import com.main.model.Request;
import com.main.model.User;

@Service
@Transactional
public class BBMSServiceImpl implements BBMSService {
	private static Logger log = Logger.getLogger(BBMSServiceImpl.class);
	@Autowired
	private BBMSDao bbmsDao;

	@Override
	public void saveUser(User user) {
		// TODO Auto-generated method stub
		bbmsDao.saveUser(user);
	}

	@Override
	public List<User> fetchUser() {
		// TODO Auto-generated method stub
		log.info("fetchUser()");
		List<User> userList = bbmsDao.fetchUser();

		return userList;
	}

	@Override
	public User fetchUserById(Integer useId) {
		// TODO Auto-generated method stub
		log.info("inside fetchUser()");
		User user = bbmsDao.fetchUserById(useId);
		return user;
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		log.info("inside updateUser()");
		bbmsDao.updateUser(user);
	}

	@Override
	public void deleteUser(Integer uid) {
		// TODO Auto-generated method stub
		log.info("inside deleteUser()");
		bbmsDao.deleteUser(uid);
	}

	@Override
	public void saveRequest(Request request) {
		// TODO Auto-generated method stub
		bbmsDao.saveRequest(request);
	}

	@Override
	public List<Request> fetchRequest() {
		// TODO Auto-generated method stub
		log.info("fetchRequest()");
		List<Request> requestList = bbmsDao.fetchRequest();

		return requestList;
	}

	@Override
	public void saveDonor(Donor donor) {
		// TODO Auto-generated method stub
		bbmsDao.saveDonor(donor);
	}

	@Override
	public List<Donor> fetchDonor() {
		// TODO Auto-generated method stub
		log.info("fetchDonor()");
		List<Donor> donorList = bbmsDao.fetchDonor();

		return donorList;
	}

	@Override
	public Request fetchRequestById(Integer reqId) {
		// TODO Auto-generated method stub
		log.info("inside fetchRequest()");
		Request request = bbmsDao.fetchRequestById(reqId);
		return request;
	}

	@Override
	public void updateRequest(Request request) {
		// TODO Auto-generated method stub
		log.info("inside updateRequest()");
		bbmsDao.updateRequest(request);
	}

	@Override
	public Donor fetchDonorById(Integer patId) {
		// TODO Auto-generated method stub
		log.info("inside fetchDonor()");
		Donor donor = bbmsDao.fetchDonorById(patId);
		return donor;
	}

	@Override
	public void updateDonor(Donor donor) {
		// TODO Auto-generated method stub
		log.info("inside updateDonor()");
		bbmsDao.updateDonor(donor);
	}

	@Override
	public void saveAdmin(Admin admin) {
		// TODO Auto-generated method stub
		bbmsDao.saveAdmin(admin);
	}

}

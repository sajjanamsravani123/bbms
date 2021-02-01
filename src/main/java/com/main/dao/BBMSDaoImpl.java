package com.main.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.main.model.Admin;
import com.main.model.Donor;
import com.main.model.Request;
import com.main.model.User;

@Repository
public class BBMSDaoImpl implements BBMSDao {
	private static Logger log = Logger.getLogger(BBMSDaoImpl.class);
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveUser(User user) {
		// TODO Auto-generated method stub
		log.info("Dao saveUSer()");
		sessionFactory.getCurrentSession().save(user);
	}

	@Override
	public List<User> fetchUser() {
		// TODO Auto-generated method stub
		log.info("Dao fetchStudent()");
		Query query = sessionFactory.getCurrentSession().createQuery("from User u");
		List<User> userList = query.list();

		return userList;
	}

	@Override
	public User fetchUserById(Integer useId) {
		// TODO Auto-generated method stub
		log.info("Dao inside fetchUserById()");
		User user = (User) sessionFactory.getCurrentSession().get(User.class, useId);
		return user;
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		log.info("Dao updateUser()");
		sessionFactory.getCurrentSession().update(user);
	}

	@Override
	public void deleteUser(Integer uid) {
		// TODO Auto-generated method stub
		log.info("Dao deleteUser()");
		Query query = sessionFactory.getCurrentSession().createQuery("delete from User u where userId=:userid");
		query.setParameter("userid", uid);
		query.executeUpdate();
	}

	@Override
	public void saveRequest(Request request) {
		// TODO Auto-generated method stub
		log.info("Dao saveRequest()");
		sessionFactory.getCurrentSession().save(request);
	}

	@Override
	public List<Request> fetchRequest() {
		// TODO Auto-generated method stub
		Query query = sessionFactory.getCurrentSession().createQuery("from Request r");
		List<Request> requestList = query.list();

		return requestList;
	}

	@Override
	public void saveDonor(Donor donor) {
		// TODO Auto-generated method stub
		log.info("Dao saveDonor()");
		sessionFactory.getCurrentSession().save(donor);
	}

	@Override
	public List<Donor> fetchDonor() {
		// TODO Auto-generated method stub
		Query query = sessionFactory.getCurrentSession().createQuery("from Donor d");
		List<Donor> donorList = query.list();

		return donorList;
	}

	@Override
	public Request fetchRequestById(Integer requseId) {
		// TODO Auto-generated method stub
		Request request = (Request) sessionFactory.getCurrentSession().get(Request.class, requseId);
		return request;
	}

	@Override
	public void updateRequest(Request request) {
		// TODO Auto-generated method stub
		log.info("Dao updateRequest()");
		sessionFactory.getCurrentSession().update(request);
	}

	@Override
	public Donor fetchDonorById(Integer patId) {
		// TODO Auto-generated method stub
		Donor donor = (Donor) sessionFactory.getCurrentSession().get(Donor.class, patId);
		return donor;
	}

	@Override
	public void updateDonor(Donor donor) {
		// TODO Auto-generated method stub
		log.info("Dao updateRequest()");
		sessionFactory.getCurrentSession().update(donor);
	}

	@Override
	public void saveAdmin(Admin admin) {
		// TODO Auto-generated method stub
		log.info("Dao saveAdmin()");
		sessionFactory.getCurrentSession().save(admin);
	}

}

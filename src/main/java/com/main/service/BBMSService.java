package com.main.service;

import java.util.List;

import com.main.model.Admin;
import com.main.model.Donor;
import com.main.model.Request;
import com.main.model.User;

public interface BBMSService {
	public void saveUser(User user);

	public List<User> fetchUser();

	public User fetchUserById(Integer useId);

	public void updateUser(User user);

	public void deleteUser(Integer uid);

	public void saveRequest(Request request);

	public List<Request> fetchRequest();

	public void saveDonor(Donor donor);

	public List<Donor> fetchDonor();

	public Request fetchRequestById(Integer reqId);

	public void updateRequest(Request request);

	public Donor fetchDonorById(Integer patId);

	public void updateDonor(Donor donor);

	public void saveAdmin(Admin admin);
}

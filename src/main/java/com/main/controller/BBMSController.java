package com.main.controller;

import java.util.List;
import java.util.Random;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.main.model.Admin;
import com.main.model.Donor;
import com.main.model.Request;
import com.main.model.User;
import com.main.service.BBMSService;

@Controller
public class BBMSController {

	private static Logger log = Logger.getLogger(BBMSController.class);
	@Autowired
	private BBMSService bbmsService;

	@RequestMapping(value = "/login")
	public String Login(ModelMap map) {
		return "Main";
	}

	@RequestMapping(value = "/home")
	public String home(ModelMap map) {
		return "Home";
	}
    //Admin page
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin(ModelMap map) {
		Admin admin = new Admin();
		map.addAttribute("adminForm", admin);
		return "AdminForm";
	}
    //login check
	@RequestMapping(value = "/logincheck", method = RequestMethod.POST)
	public String saveAdmin(@Validated @ModelAttribute("adminForm") Admin admin, BindingResult result, ModelMap map) {
		String viewPage;
		if (result.hasErrors()) {
			log.info("Validation errors occured");
			viewPage = "AdminForm";
		} else {
			log.info("Invoking saveUser method");
			Random r = new Random();
			int uid = r.nextInt(99999) + 10000;
			admin.setId(uid);
			bbmsService.saveAdmin(admin);
			// Admin a=new Admin();
			if (admin.getUserName().equals("skotichukkala") && admin.getUserPassword().equals("Sriv@lli")) {
				viewPage = "AdminPage";
			} else {
				viewPage = "Failed";
			}
		}

		return viewPage;
	}
    //user
	@RequestMapping(value = "/user", method = RequestMethod.GET)
	public String loadUserPage(ModelMap map) {
		log.info("Request inside loadDonorPage method");
		User user = new User();
		map.addAttribute("userForm", user);
		return "UserRegistration";
	}

	@RequestMapping(value = "/saveUser", method = RequestMethod.POST)
	public String saveUser(@Validated @ModelAttribute("userForm") User user, BindingResult result, ModelMap map) {
		String viewPage;
		if (result.hasErrors()) {
			log.info("Validation errors occured");
			viewPage = "UserRegistration";
		} else {
			log.info("Invoking saveUser method");
			Random r = new Random();
			int uid = r.nextInt(99999) + 10000;
			user.setUserId(uid);
			bbmsService.saveUser(user);
			// List<User> userList=bbmsService.fetchUser();
			// map.addAttribute("userList", userList);
			viewPage = "Success";
		}
		return viewPage;
	}

	@RequestMapping(value = "/check")
	public String check(ModelMap map) {
		List<User> userList = bbmsService.fetchUser();
		map.addAttribute("userList", userList);
		return "UserSuccess";
	}

	@RequestMapping(value = "/fetchById/{userId}")
	public String fetchUserById(@PathVariable("userId") Integer useId, ModelMap map) {
		log.info("fetching occurs");
		User user = bbmsService.fetchUserById(useId);
		map.addAttribute("editForm", user);
		return "UserUpdate";
	}

	@RequestMapping(value = "/editUser", method = RequestMethod.POST)
	public String updateEmployee(@Validated @ModelAttribute("userForm") User user, BindingResult result, ModelMap map) {
		log.info("Validation error occured");
		String editViewPage;
		if (result.hasErrors()) {
			editViewPage = "UserUpdate";
		} else {
			log.info("Invoking method to update data");
			bbmsService.updateUser(user);
			List<User> userList = bbmsService.fetchUser();
			map.addAttribute("userList", userList);
			editViewPage = "UserSuccess";
		}
		return editViewPage;
	}

	@RequestMapping(value = "/delete/{userId}")
	public String deleteUser(@PathVariable("userId") Integer uid, ModelMap map) {
		log.info("deleting user based on id");
		bbmsService.deleteUser(uid);
		List<User> userList = bbmsService.fetchUser();
		map.addAttribute("userList", userList);
		return "UserSuccess";
	}

	// requestor form
	@RequestMapping(value = "/request", method = RequestMethod.GET)
	public String loadReqestPage(ModelMap map) {
		log.info("Request inside loadRequestPage method");
		Request request = new Request();
		map.addAttribute("requestForm", request);
		return "RequestRegistration";
	}

	@RequestMapping(value = "/saveRequest", method = RequestMethod.POST)
	public String saveRequest(@Validated @ModelAttribute("requestForm") Request request, BindingResult result,
			ModelMap map) {
		String viewPage;
		if (result.hasErrors()) {
			log.info("Validation errors occured");
			viewPage = "RequestRegistration";
		} else {
			log.info("Invoking saveRequest method");
			bbmsService.saveRequest(request);
			// List<Request> requestList=bbmsService.fetchRequest();
			// map.addAttribute("requestList", requestList);
			viewPage = "Success";
		}
		return viewPage;
	}

	// donor
	@RequestMapping(value = "/donor", method = RequestMethod.GET)
	public String loadDonorPage(ModelMap map) {
		log.info("Request inside loadDonorPage method");
		Donor donor = new Donor();
		map.addAttribute("donorForm", donor);
		return "DonorRegistration";
	}

	@RequestMapping(value = "/saveDonor", method = RequestMethod.POST)
	public String saveDonor(@Validated @ModelAttribute("donorForm") Donor donor, BindingResult result, ModelMap map) {
		String viewPage;
		if (result.hasErrors()) {
			log.info("Validation errors occured");
			viewPage = "DonorRegistration";
		} else {
			log.info("Invoking saveRequest method");
			bbmsService.saveDonor(donor);
			// List<Donor> donorList=bbmsService.fetchDonor();
			// map.addAttribute("donorList", donorList);
			viewPage = "Success";
		}
		return viewPage;
	}

	@RequestMapping(value = "/adminrequest")
	public String updateStatus(ModelMap map) {
		List<Request> requestList = bbmsService.fetchRequest();
		map.addAttribute("requestList", requestList);
		return "RequestSuccess";
	}

	@RequestMapping(value = "/fetchByIds/{reqId}")
	public String fetchUserByIds(@PathVariable("reqId") Integer reqId, ModelMap map) {
		log.info("fetching occurs");
		Request request = bbmsService.fetchRequestById(reqId);
		map.addAttribute("editForm1", request);
		return "RequestUpdate";
	}

	@RequestMapping(value = "/editRequest", method = RequestMethod.POST)
	public String updateRequest(@Validated @ModelAttribute("requestForms") Request request, BindingResult result,
			ModelMap map) {
		log.info("Validation error occured");

		log.info("Invoking method to update data");
		bbmsService.updateRequest(request);
		// List<User> userList = bbmsService.fetchUser();
		// map.addAttribute("userList", userList);

		return "Success";
	}

	@RequestMapping(value = "/admindonor")
	public String updateStatusd(ModelMap map) {
		List<Donor> donorList = bbmsService.fetchDonor();
		map.addAttribute("donorList", donorList);
		return "DonorSuccess";
	}

	@RequestMapping(value = "/fetchByIdss/{patientId}")
	public String fetchDonorByIds(@PathVariable("patientId") Integer patId, ModelMap map) {
		log.info("fetching occurs");
		Donor donor = bbmsService.fetchDonorById(patId);
		map.addAttribute("editForm2", donor);
		return "DonorUpdate";
	}

	@RequestMapping(value = "/editDonor", method = RequestMethod.POST)
	public String updateDonor(@Validated @ModelAttribute("donorForms") Donor donor, BindingResult result,
			ModelMap map) {
		log.info("Validation error occured");

		log.info("Invoking method to update data");
		bbmsService.updateDonor(donor);
		// List<User> userList = bbmsService.fetchUser();
		// map.addAttribute("userList", userList);

		return "Success";
	}

	@RequestMapping(value = "/checkr")
	public String check1(ModelMap map) {
		List<Request> reqList = bbmsService.fetchRequest();
		map.addAttribute("reqList", reqList);
		return "RequestView";
	}

	@RequestMapping(value = "/checkd")
	public String check2(ModelMap map) {
		List<Donor> donList = bbmsService.fetchDonor();
		map.addAttribute("donList", donList);
		return "DonorView";
	}
}

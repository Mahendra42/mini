package com.cts.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ObjectUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.cts.model.MedicineDetails;
import com.cts.model.admin;
import com.cts.repo.AdminRepo;
import com.cts.service.medidetailsService;

@Controller
public class AdminController {
	@Autowired
	private AdminRepo admrepos;
	@Autowired
	private medidetailsService med;

	@RequestMapping("/admlogin")
	public String alog() {
		return "Alogin";

	}

	@RequestMapping("/alogin")
	public String doclog(@RequestParam("username") String userName, Model m,
			@RequestParam("password") String password) {
		admin r = admrepos.findByuserNameAndPassword(userName, password);

		if (!(ObjectUtils.isEmpty(r))) {
			m.addAttribute("successpage", "Login Successful");
			m.addAttribute("firstname", r.getFirstname());
			m.addAttribute("lastname", r.getLastname());
			return "asuccesspage";
		}

		return "Aunsucess";
	}

	@RequestMapping("/lmd")
	public String loadDetails(HttpSession session, Model m) {
		//String id=admrepos.findById();
		//long aid = (long) session.getAttribute(id);
		//System.out.println(aid);
		MedicineDetails md = new MedicineDetails();
		m.addAttribute("md",md);
		//m.addAttribute("id", aid);
		return "lmd";
	}
	
	@PostMapping( "/medreg" )
	public String regfom(@Valid @ModelAttribute(value = "md") MedicineDetails md, BindingResult br,Model m){
		if(br.hasErrors()) {
			return "lmd";
		}
		med.register(md);
		return "successpage";

	}
	
	@RequestMapping("/medreg")
	public String blcount(@Valid @ModelAttribute(value = "md") MedicineDetails md) {
		med.register(md);
		return "successpage";
	}
	
	
	@RequestMapping("/vloe")
	public String doctors(Model m) {
		List<MedicineDetails> details=med.findall();
		m.addAttribute("details",details);
		return "listofdetails";
		
	}
	
	@RequestMapping("/vem")
	public String books(Model m) {
		List<MedicineDetails> appointments=med.showAllAppointments();
		m.addAttribute("appointments",appointments);
		return "loa";
	}

	
	@RequestMapping("/lo")
	public String logout(HttpSession session, Model m) {
		if (session != null)
			session.invalidate();
		return "redirect:/";
	}
}

package com.cts.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.cts.model.MedicineDetails;
import com.cts.repo.meddRepo;

@Service
@Transactional
public class medidetailsService {

	@Autowired
	private meddRepo medrep;
	
	public void register(MedicineDetails md) {
		medrep.save(md);
	}
	public List<MedicineDetails> findall() {
		List<MedicineDetails> meddetails= (List<MedicineDetails>) medrep.findAll();
		return meddetails;
	}
	
	public List<MedicineDetails> showAllAppointments() {
		List<MedicineDetails> xyz= (List<MedicineDetails>) medrep.findAll();
		 Date date = Calendar.getInstance().getTime();  
         DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");  
         String strDate = dateFormat.format(date);  
         List<MedicineDetails>patients=new ArrayList<MedicineDetails>();
         for (MedicineDetails appointment : xyz) {
        	 String bdate=appointment.getExpiryDate();
        	 
        	 if(bdate.compareTo(strDate)<=0) {
        		 patients.add(appointment);
        	 }
			
		}
		return patients;
		
	}
}
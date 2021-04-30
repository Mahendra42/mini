package com.cts.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotEmpty;

@Entity
public class MedicineDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO,generator = "md_sequence")
	private long companyId;
	private String companyName;
	@NotEmpty(message = "Please enter medicine name")
	private String medicineName;
	@NotEmpty(message = "Please enter Manufacturing date")
	private String manufacturingDate;
	@NotEmpty(message = "Please enter ExpiryDate")
	private String expiryDate;
	
	public MedicineDetails() {
		
	}

	public MedicineDetails(long companyId, String companyName, String medicineName, String manufacturingDate,
			String expiryDate) {
		super();
		this.companyId = companyId;
		this.companyName = companyName;
		this.medicineName = medicineName;
		this.manufacturingDate = manufacturingDate;
		this.expiryDate = expiryDate;
	}

	public long getCompanyId() {
		return companyId;
	}

	public void setCompanyId(long companyId) {
		this.companyId = companyId;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getMedicineName() {
		return medicineName;
	}

	public void setMedicineName(String medicineName) {
		this.medicineName = medicineName;
	}

	public String getManufacturingDate() {
		return manufacturingDate;
	}

	public void setManufacturingDate(String manufacturingDate) {
		this.manufacturingDate = manufacturingDate;
	}

	public String getExpiryDate() {
		return expiryDate;
	}

	public void setExpiryDate(String expiryDate) {
		this.expiryDate = expiryDate;
	}

	@Override
	public String toString() {
		return "MedicineDetails [companyId=" + companyId + ", companyName=" + companyName + ", medicineName="
				+ medicineName + ", manufacturingDate=" + manufacturingDate + ", expiryDate=" + expiryDate + "]";
	}
}

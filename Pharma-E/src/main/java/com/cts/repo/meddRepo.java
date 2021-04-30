package com.cts.repo;

import org.springframework.data.repository.CrudRepository;
import com.cts.model.MedicineDetails;

public interface meddRepo extends CrudRepository<MedicineDetails,Long> {

}

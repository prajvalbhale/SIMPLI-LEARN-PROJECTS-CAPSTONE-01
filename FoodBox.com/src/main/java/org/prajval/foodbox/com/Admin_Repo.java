package org.prajval.foodbox.com;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface Admin_Repo extends JpaRepository<Admin, Integer>{
	
	@Query("select a from Admin a where a.ad_mail=?1")
	public Admin findAdminByMail(String ad_mail);
	
	@Query("select a from Admin a where a.ad_pass=?1")
	public Admin findAdminBypass(String ad_pass);
}

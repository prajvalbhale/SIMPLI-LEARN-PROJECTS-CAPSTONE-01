package org.prajval.foodbox.com;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Admin_Dao {

	@Autowired
	private Admin_Repo a_repo;
	
	//ADMIN INSERTED
	public Admin insert(Admin a)
	{
		return a_repo.save(a);
	}
	
	//ADMIN LOGIN BY MAIL & PASSWORD
	public Admin mail(String ad_mail)
	{
		return a_repo.findAdminByMail(ad_mail);
	}
	public Admin pass(String ad_pass)
	{
		return a_repo.findAdminBypass(ad_pass);
	}

}

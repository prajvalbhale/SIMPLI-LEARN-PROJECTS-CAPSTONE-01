package org.prajval.foodbox.com;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class User_Dao {

	@Autowired
	User_Repo u_repo;
	
	
	public User insert(User u)
	{
		return u_repo.save(u);
	}
	
	public List<User> UserProfile()
	{
		return (List<User>) u_repo.findAll();
	}
	
	//USER LOGIN BY MAIL & PASSWORD
		public User mail(String user_mail)
		{
			return u_repo.findAdminByMail(user_mail);
		}
		public User pass(String con_pass)
		{
			return u_repo.findAdminBypass(con_pass);
		}
	
	//WE FIND USER FROM PHONE & UPDATE HIM WITH ADDRESS AND BUY DATE
//	public User findPhone(User u)
//	{
//		User ii =(User) u_repo.findByPhone(u.getUser_phone());
//		ii.setCon_add(u.getCon_add());
//		return u_repo.save(ii);
//	}
	
	public User update(User u) 
	{
        User uu = u_repo.findByPhone(u.getUser_phone());
        uu.setCon_add(u.getCon_add());
        uu.setBuy_Date(LocalDate.now());
        return u_repo.save(uu);
	}
	
	public User UserPayBill(User u) 
	{
        User ur = u_repo.findByPhone(u.getUser_phone());
        ur.setCard_number(u.getCard_number());
        ur.setExp_Date(u.getExp_Date());
        ur.setCVV(u.getCVV());
        ur.setPayment_date(LocalDate.now());
        ur.setStatus("PAID");
        return u_repo.save(ur);
	}
	
	public List<User> UserBillGenarate(String user_phone) 
	{
		return u_repo.findByPhoneforBill(user_phone);
	}
}

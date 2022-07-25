package org.prajval.foodbox.com;

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
	
//	public User update(User u) {
//        User ii =(User) u_repo.findByPhone(u.getUser_phone());
//        ii.setCon_add(u.getCon_add());
//        ii.setBuy_Date(LocalDate.now());
//        return u_repo.save(ii);
//}
}

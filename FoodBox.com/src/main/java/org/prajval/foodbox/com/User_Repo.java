package org.prajval.foodbox.com;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface User_Repo extends JpaRepository<User, Integer>{

	@Query("select u from User u where u.user_mail=:user_mail")
	public User getUserByMail(@Param ("user_mail") String user_mail);
	
	@Query("select u from User u where u.user_phone=?1")
	public User findByPhone(String user_phone);
	
	@Query("select u from User u where u.user_mail=?1")
	public User findAdminByMail(String user_mail);
	
	@Query("select u from User u where u.con_pass=?1")
	public User findAdminBypass(String con_pass);
	
	@Query("select u from User u where u.user_phone=?1")
	public List<User> findByPhoneforBill(String user_phone);

	
}

package org.prajval.foodbox.com;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;


public class UserDetailServiceImpl implements UserDetailsService{

	@Autowired
	private User_Repo user_Repo;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException 
	{
		//WE FETCH OUR RECORDS FROM DB
		User user = user_Repo.getUserByMail(username);
		if (user == null) {
			throw new UsernameNotFoundException("Could Not Found User");
		}
		
		CustomUserData customUserData = new CustomUserData(user);
		return customUserData;
	}

}

package org.prajval.foodbox.com;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface Item_Repo extends JpaRepository<Item, Integer>{
	
	@Query("select i from Item i")
	public List<Item> getallitem();

	@Query("select i from Item i where i.item_name=?1")
	public List<Item> findByName(String item_name);
	
//	@Query("select i from Item i where i.item")
//	public String findbyitemname();
	
//	@Query("delete from Item i where i.cuisines=?1")
//	public void deletebycuisines(String cuisines);
	
//	@Query("select i, u from Item, User where u.user_id='28'")
//	public String findItemandUser();

}

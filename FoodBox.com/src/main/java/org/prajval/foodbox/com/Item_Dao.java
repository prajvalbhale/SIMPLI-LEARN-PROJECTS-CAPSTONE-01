package org.prajval.foodbox.com;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Item_Dao {

	@Autowired
	private Item_Repo i_repo;
	
	public Item insert(Item i)
	{
		return i_repo.save(i);
	}
	
	public List<Item> itemlist()
	{
		return (List<Item>) i_repo.findAll();
	}
	
	public List<Item> findByName(String item_name)
	{
			return i_repo.findByName(item_name);
	}
	
	public void delete(int id)
	{
		i_repo.deleteById(id);
	}
	
//	public void delete(String cuisines)
//	{
//		i_repo.deletebycuisines(cuisines);
//	}
	
	public Item update(Item i) {
        Item ii =i_repo.findById(i.getId()).orElse(null);
        ii.setItem_name(i.getItem_name());
        ii.setItem_price(i.getItem_price());
        ii.setCuisines(i.getCuisines());
        ii.setOffers(i.getOffers());
        return i_repo.save(ii);
}
}

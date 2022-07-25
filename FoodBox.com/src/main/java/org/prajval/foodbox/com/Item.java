package org.prajval.foodbox.com;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;

import lombok.Data;

@Data
@Entity
public class Item {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private String item_code;
	private String item_name;
	private String item_price;
	private String cuisines;
	private String description;
	private String offers;
	LocalDate date = LocalDate.now();
	@Lob
	private String  item_img;
	
	private String item_review;
	
	@ManyToOne
	@JoinColumn(table = "Item")
	private User UserFK;

}

package org.prajval.foodbox.com;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class Admin {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int ad_id;
	private String ad_name;
	private String ad_mail;
	private String ad_phone;
	private String ad_pass;
	private String role="ADMIN";
	
	LocalDate date = LocalDate.now();
}

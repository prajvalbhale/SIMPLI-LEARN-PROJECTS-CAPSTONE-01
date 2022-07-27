package org.prajval.foodbox.com;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.PrimaryKeyJoinColumn;

import lombok.Data;

@Data
@Entity
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int user_id;
	private String user_name;
	private String role="USER";
	private String user_mail;
	private String user_phone;
	private String user_pass;
	private String con_pass;
	private String gender;
	
	private String con_add="address";
	private LocalDate Buy_Date;
	
//	LocalDate Buy_Date = LocalDate.now();
	
	private LocalDate Signin_Date;
//	LocalDate signin_date = LocalDate.now();
	
	private String card_number="cardnumberin";
	private String Exp_Date="exda";
	private String CVV="cvn";
	private String payment_method;
	private LocalDate payment_date;
	private String status="UN-PAID";

	@ManyToOne
	@PrimaryKeyJoinColumn(referencedColumnName = "user_id")
	private Item ItemFK;
	
}

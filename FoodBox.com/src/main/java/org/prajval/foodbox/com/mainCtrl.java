package org.prajval.foodbox.com;

import java.time.LocalDate;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class mainCtrl {

//	@Autowired
//	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	User_Dao u_dao;	
	
	@Autowired
	Admin_Dao a_dao;
	
	@Autowired
	Item_Dao i_dao;
	
	@Autowired
	Item_Repo i_repo;
	
	@Autowired
	User_Repo u_repo;
	
	
	
	/*INDEX PAGE ALL OPERETIONS START's*/
	@ResponseBody
	@RequestMapping("/ShowIndexPage")
	public ModelAndView ShowIndexPage(HttpServletRequest req, HttpServletResponse res)
	{
		ModelAndView mv = new ModelAndView();
		List<Item> avilitems = i_dao.itemlist();
		mv.addObject("avilitems", avilitems);
		mv.setViewName("index.jsp");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/ShowAboutPage")
	public ModelAndView ShowAboutPage(Model model)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("about.jsp");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/ShowCuisinPage")
	public ModelAndView ShowCuisinPage(Model model)
	{
		ModelAndView mv = new ModelAndView();
		List<Item> avilitems = i_dao.itemlist();
		mv.addObject("avilitems", avilitems);
		mv.setViewName("cuisines.jsp");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/ShowContactPage")
	public ModelAndView ShowContactPage(Model model)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("contact.jsp");
		return mv;
	}	
	
	@ResponseBody
	@RequestMapping("/SubmitQuery")
	public ModelAndView SubmitQuery(Model model)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index.jsp");
		return mv;
	}
	
	
	
	/*ADMIN OPERETIONS START's*/
	@ResponseBody
	@RequestMapping("/ShowAdminOpr")
	public ModelAndView ShowAdminOpr(Model model)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminop.jsp");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/AdminAddItems")
	public ModelAndView AdminAddItems(Model model)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("ad_addItems.jsp");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/AdminApproveItems")
	public ModelAndView AdminApproveItems(HttpServletRequest req, HttpServletResponse res)
	{
		ModelAndView mv = new ModelAndView();
		List<Item> avilitems = i_dao.itemlist();
		mv.addObject("avilitems", avilitems);
		mv.setViewName("itemcard.jsp");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/AdminDeleteCuision")
	public ModelAndView AdminDeleteCuision(Model model)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("deleteCouisin.jsp");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/AdminUpdateItems")
	public ModelAndView AdminUpdateItems(Model model)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("updateitem.jsp");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/verifyAdmin")
	public ModelAndView admin_login(HttpServletRequest req, HttpServletResponse res)
	{
		ModelAndView mv = new ModelAndView();
		
		String admin_mail = req.getParameter("ad_mail");
		String admin_pass = req.getParameter("ad_pass");
		
		if(a_dao.mail(admin_mail)!=null && a_dao.pass(admin_pass)!=null)
		{			
			mv.setViewName("SuccessAdminLog.jsp");
			
		}else 
		{
			mv.setViewName("FailedAdminLog.jsp");
		}
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/AdminLogFromIndex")
	public ModelAndView AdminLogFromIndex(Model model)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminLogCtrl.jsp");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/SignUpAd")
	public ModelAndView insertad(HttpServletRequest req, HttpServletResponse res)
	{
		ModelAndView mv = new ModelAndView();
		Admin a = new Admin();
		a.setAd_name(req.getParameter("ad_name"));
		a.setAd_mail(req.getParameter("ad_mail"));
		a.setAd_phone(req.getParameter("ad_phone"));
		a.setAd_pass(req.getParameter("ad_pass"));
		Admin aa = a_dao.insert(a);
		if(aa!=null)
		{
			mv.setViewName("SuccessAdminSignUp.jsp");
		}else
		{
			mv.setViewName("FailedAdminSignUp.jsp");
		}
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/AdminSignUp")
	public ModelAndView AdminSignUp(Model model)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("SignUpAd.jsp");
		return mv;
	}
	
	
	
	/*USER OPERETIONS START's*/
		
	@ResponseBody
	@RequestMapping("/UserLoginandSignUp")
	public ModelAndView UserLoginandSignUp(Model model)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("SignUp.jsp");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/insert")
	public ModelAndView insert(HttpServletRequest req, HttpServletResponse res)
	{
		ModelAndView mv = new ModelAndView();
		User u = new User();
		u.setUser_name(req.getParameter("user_name"));
		u.setUser_mail(req.getParameter("user_mail"));
		u.setUser_phone(req.getParameter("user_phone"));
		u.setUser_pass(req.getParameter("user_pass"));
		//u.setCon_pass(passwordEncoder.encode(req.getParameter("con_pass")));
		u.setCon_pass(req.getParameter("con_pass"));
		u.setGender(req.getParameter("gender"));
		u.setCard_number("121213131414");
		u.setExp_Date("0126");
		u.setCVV("120");
		u.setPayment_method("CARD");
		u.setSignin_Date(LocalDate.now());
		User uu = u_dao.insert(u);
		if(uu!=null) 
		{
			mv.setViewName("SuccessUserSignUp.jsp");
		}else
		{
			mv.setViewName("FailedUserSignUp.jsp");
		}
		return mv;
	}	
	
	@ResponseBody
	@RequestMapping("/ShowUserHomePage")
	public ModelAndView ShowUserHomePage(HttpServletRequest req, HttpServletResponse res)
	{
		ModelAndView mv = new ModelAndView();
		List<Item> avilitems = i_dao.itemlist();
		mv.addObject("avilitems", avilitems);
		mv.setViewName("userlogedin.jsp");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/UserHomePage")
	public ModelAndView UserHomePage(HttpServletRequest req, HttpServletResponse res)
	{
		ModelAndView mv = new ModelAndView();
		List<Item> avilitems = i_dao.itemlist();
		mv.addObject("avilitems", avilitems);

		mv.setViewName("UserLogedIn");
		return mv;
	}	
	
	@ResponseBody
	@RequestMapping("/user-login")
	public ModelAndView UserSignIn(Model model)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("signin.jsp");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/user-goto-login")
	public ModelAndView usergologin(HttpServletRequest req, HttpServletResponse res)
	{
		ModelAndView mv = new ModelAndView();
		String user_mail = req.getParameter("user_mail");
		String con_pass = req.getParameter("con_pass");
		
		if(u_dao.mail(user_mail)!=null && u_dao.pass(con_pass)!=null)
		{			
			mv.setViewName("SuccessUserLog.jsp");
			
		}else 
		{
			mv.setViewName("FailedUserLog.jsp");
		}
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/HomePage")
	public ModelAndView ListItemforUser(HttpServletRequest req, HttpServletResponse res)
	{
		ModelAndView mv = new ModelAndView();
		List<Item> avilitems = i_dao.itemlist();
		mv.addObject("avilitems", avilitems);

		mv.setViewName("userlogedin.jsp");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/findItemname")
	public ModelAndView findItemname(HttpServletRequest req, HttpServletResponse res)
	{
		ModelAndView mv = new ModelAndView();
		String item_name = req.getParameter("item_name");
		List<Item> avilitems = i_repo.findByName(item_name);
		mv.addObject("avilitems", avilitems);
		if(i_dao!=null)
		{
			mv.setViewName("userlogedin.jsp");
		}else
		{
			mv.setViewName("FailedNullItem.jsp");
		}
		return mv;		
	}
	
	
	
	
	/*ITEM's OPERETIONS START's*/	
	@ResponseBody
	@RequestMapping("/insertitem")
	public ModelAndView insertitem(HttpServletRequest req, HttpServletResponse res)
	{
		ModelAndView mv = new ModelAndView();
		Item i = new Item();
		i.setItem_code(req.getParameter("item_code"));
		i.setItem_name(req.getParameter("item_name"));
		i.setItem_price(req.getParameter("item_price"));
		i.setCuisines(req.getParameter("cuisines"));
		i.setDescription(req.getParameter("description"));
		i.setOffers(req.getParameter("offers"));
		i.setItem_img(req.getParameter("img"));
		Item ii = i_dao.insert(i);
		if(ii!=null) 
		{
			mv.setViewName("SuccessItemAdded.jsp");
		}else
		{
			mv.setViewName("FailedItemAdded.jsp");
		}
		return mv;
	}	
		
	@ResponseBody
	@RequestMapping("/searchitem")
	public ModelAndView searchitem(HttpServletRequest req, HttpServletResponse res)
	{
		ModelAndView mv = new ModelAndView();
		String item_name = req.getParameter("item_name");
		List<Item> i_name = i_dao.findByName(item_name);
		mv.addObject("i_name", i_name);
		if(i_dao!=null)
		{
			mv.setViewName("itemcard");
		}else
		{
			mv.setViewName("FailedNullItem.jsp");
		}
		return mv;		
	}	
	
	
	@ResponseBody
	@RequestMapping("/deletecouisin")
	public ModelAndView delete(HttpServletRequest req, HttpServletResponse res)
	{
		ModelAndView mv = new ModelAndView();
		Item i = new Item();
		i.setId(Integer.parseInt(req.getParameter("item_id")));
		i_repo.deleteById(i.getId());
//		i.setCuisines(req.getParameter("cuisines"));
//		i_dao.delete(i.getCuisines());
		if(i_repo!=null)
		{
			mv.setViewName("SuccessCouisinDelete.jsp");
		}else 
		{
			mv.setViewName("FailedCouisinDelete.jsp");
		}
		return mv;
	}
	
	
	
	/*PAYMENT RELETED OPERATION's*/	
	@ResponseBody
	@RequestMapping("/UpdateUserDetails")
	public ModelAndView UpdateUserDetails(Model model)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("UpdateUserForBuy.jsp");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/update")
	public ModelAndView update(HttpServletRequest req, HttpServletResponse res)
	{
		ModelAndView mv = new ModelAndView();
		Item i = new Item();
//		i.setItem_code(req.getParameter("item_code"));
		i.setId(Integer.parseInt(req.getParameter("item_id")));
		i.setItem_name(req.getParameter("item_name"));
		i.setItem_price(req.getParameter("item_price"));
		i.setCuisines(req.getParameter("cuisines"));
//		i.setDescription(req.getParameter("description"));
		i.setOffers(req.getParameter("offers"));
//		i.setItem_img(req.getParameter("img"));
		Item ii = i_dao.update(i);
		if(ii!=null) 
		{
			mv.setViewName("SuccessUpdateItemData.jsp");
		}else
		{
			mv.setViewName("FailedUpdateItemData.jsp");
		}
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/InsertingAdress")
	public ModelAndView InsertAddForBuy(HttpServletRequest req, HttpServletResponse res)
	{
		ModelAndView mv = new ModelAndView();
		User u = new User();
		u.setUser_phone(req.getParameter("user_phone"));		
		u.setCon_add(req.getParameter("user_add"));
		u.setBuy_Date(LocalDate.now());
		User uu = u_dao.update(u); //insert(u);
//			if (uu==null) 
//			{
//				mv.setViewName("FailedUserPhoneisInvalid.jsp");
//			}
		
		if(uu!=null)
		{
			mv.setViewName("RedirectPayment_AddressAdd.jsp");
		}else
		{
			mv.setViewName("FailedRedirectPayment_AddressAdd.jsp");
		}
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/userpaymentprocessing")
	public ModelAndView UserPaymentProcessing(HttpServletRequest req, HttpServletResponse res)
	{
		ModelAndView mv = new ModelAndView();
		User u = new User();
		u.setUser_phone(req.getParameter("user_phone"));		
		u.setCard_number(req.getParameter("card_number"));
		u.setExp_Date(req.getParameter("exp_date"));
		u.setCVV(req.getParameter("cvvno"));
		u.setPayment_date(LocalDate.now());
		u.setPayment_method("CARD");
		u.setStatus("PAID");
		User us = u_dao.UserPayBill(u); //insert(u);		
		if(us!=null)
		{
			mv.setViewName("SuccessPaymentGetBillNow.jsp");
		}else
		{
			mv.setViewName("FailedRedirectPayment_AddressAdd.jsp");
		}
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/user-get-bill-now")
	public ModelAndView UserGetBillNow(HttpServletRequest req, HttpServletResponse res)
	{
		ModelAndView mv = new ModelAndView();
		String GetBill = req.getParameter("user_phone");
		List<User> UserBill = u_dao.UserBillGenarate(GetBill);
		mv.addObject("UserBill", UserBill);
		if(u_dao!=null)
		{
			mv.setViewName("SuccessUserBillGenerate.jsp");
		}else
		{
			mv.setViewName("FailedUserBillGenerate.jsp");
		}
		return mv;
	}
	
	
	/*HOME SCREEN 2 OPERATION's*/
	@ResponseBody
	@RequestMapping("/BackHomeScreen2")
	public ModelAndView BackHomeScreen2(Model model)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("homescreen2.jsp");
		return mv;
	}
	
}
	
//	@ResponseBody
//	@RequestMapping("/updateforbuy")
//	public ModelAndView UpdateUserForBuy(HttpServletRequest req, HttpServletResponse res)
//	{
//		ModelAndView mv = new ModelAndView();
//		User u = new User();
//		u.setUser_phone(req.getParameter("user_phone"));
//		u.setCon_add(req.getParameter("con_add"));
//		u.setBuy_Date(LocalDate.now());
//		User ii = (User) u_dao.update(u);
//		if(ii!=null) 
//		{
//			mv.setViewName("SignUpSuccess");
//		}
//		return mv;
//	}
//	




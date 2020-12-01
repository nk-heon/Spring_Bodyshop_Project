package com.bodyshop.main.controller;



import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bodyshop.main.dto.BuyingDTO;
import com.bodyshop.main.dto.CartDTO;
import com.bodyshop.main.service.CartService;
import com.bodyshop.main.service.MemberService;

@Controller
public class CartController {
	
	@Autowired
	private CartService cartService;
	

	
	private ModelAndView mav;
	//장바구니 추가
	@RequestMapping(value="cartinsert")
	public ModelAndView CartInsert(@ModelAttribute CartDTO cart,HttpSession session) {
		
		mav = new ModelAndView();
		
		String user_id = (String) session.getAttribute("loginId");
			
		mav = cartService.CartInsert(cart,user_id);
		
		
		
		return mav;
	}
	//장바구니 목록
	@RequestMapping(value="cartlist")
	public ModelAndView CartList(HttpSession session) {
	
		mav = new ModelAndView();
		
		String user_id = (String) session.getAttribute("loginId");
		
		mav = cartService.CartList(user_id);
		
		
		return mav;
	}

	//장바구니 삭제
	@RequestMapping(value="cartdelete")
	public String CartDelete(@RequestParam int cart_id) {

		cartService.CartDelete(cart_id);
		
		return "redirect:/cartlist";
	}
	
	//장바구니 수정
	@RequestMapping(value="cartupdate")
	public ModelAndView CartUpdate(@RequestParam int[] amount,String[] product_id,HttpSession session) {
		
		mav = new ModelAndView();
		
		String user_id = (String) session.getAttribute("loginId");
		
		mav = cartService.CartModify(amount,product_id,user_id);

		return mav;
	}
	//결제하기
	@RequestMapping(value="kakaopay")
	public String Kakaopay() {
		
		return "CartV/koko";
	}
	//구매진행
	@RequestMapping(value="buy")
	public ModelAndView buying(HttpSession session) {
		
		String mid = (String) session.getAttribute("loginId");
		mav = cartService.buy(mid);
	
		return mav;
	
		
	}
	/*
	@RequestMapping(value="buyc")
	public ModelAndView buy(@RequestParam("pbnum") int[] pbnum,@RequestParam("pbprice") int[] pbprice,@RequestParam("pbpid") String[] pbpid,
			@RequestParam("pbpmid") String[] pbpmid,@RequestParam("pbmid") String[] pbmid,@RequestParam("pbamout") int[] pbamout,@RequestParam("pbname") String[] pbname,
			@RequestParam("pbaddress") String pbaddress,@RequestParam("pbphone") String pbphone,@RequestParam("allprice") int allprice, @RequestParam("mname") String mname) {
		mav = new ModelAndView();
		int sum = 0;
		List<BuyingDTO> buying = new ArrayList<BuyingDTO>();
		BuyingDTO buy = null;
		for(int i=0;i<pbnum.length;i++) {
			
			buy = new BuyingDTO();
			buy.setPbnum(pbnum[i]);
			buy.setPbprice(pbprice[i]);
			buy.setPbname(pbname[i]);
			buy.setPbpid(pbpid[i]);
			buy.setPbpmid(pbpmid[i]);
		    buy.setPbmid(pbmid[i]);
			buy.setPbamout(pbamout[i]);
			buying.add(buy);
			sum= sum+pbamout[i];
			
		}
		
		BuyingDTO buy1 = new BuyingDTO();
		buy1.setPbaddress(pbaddress);
		buy1.setAllprice(allprice);
		buy1.setPbphone(pbphone);
		buy1.setPbamout(sum);
		buy1.setMname(mname);
		System.out.println("바잉값"+buying);
		mav.addObject("buy1", buy1);
		mav.addObject("buy", buying);
		mav.setViewName("CartV/koko");
				return mav;
		
	}
	*/
	/*
	@RequestMapping(value="buy")
	public ModelAndView buy(@RequestParam("pbnum") int[] pbnum,@RequestParam("pbprice") int[] pbprice) {
		mav = new ModelAndView();
		System.out.println("넘버값"+pbnum);
		List<BuyingDTO> buying = new ArrayList<BuyingDTO>();
		BuyingDTO buy = null;
		for(int i=0;i<pbnum.length;i++) {
			buy = new BuyingDTO();

			buy.setPbnum(pbnum[i]);
			buy.setPbprice(pbprice[i]);
			buying.add(i, buy);
			
			System.out.println("넣는값"+buy.getPbnum());
			System.out.println(buying.get(i));
		}
	
		System.out.println("넣은값"+buying);
		mav.addObject("buying", buying);
		mav.setViewName("CartV/BB");
		return mav;
		
	}*/


	
	
	

}

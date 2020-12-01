package com.bodyshop.main.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.bodyshop.main.dao.CartDAO;
import com.bodyshop.main.dao.MemberDAO;
import com.bodyshop.main.dto.CartDTO;
import com.bodyshop.main.dto.MemberDTO;

@Service
public class CartService {
	
	@Autowired
	private CartDAO cartDAO;
	
	@Autowired
	private MemberDAO mDAO;
	
	
	private ModelAndView mav;
	
	
	//장바구니 추가
	public ModelAndView CartInsert(CartDTO cart,String user_id) {
		
		mav = new ModelAndView();
		
		cart.setUser_id(user_id);
		
		int count = cartDAO.CartCount(cart.getProduct_id(),user_id);
		String pid = cart.getProduct_id();
		
		if(count == 0) {
			
			cartDAO.CartInsert(cart);
	
		}else {
			
			cartDAO.CartUpdate(cart);
		}
		
		
		mav.setViewName("redirect:/productview?pid="+pid);
				
		
		return mav;
	}
	
	//장바구니 목록
	public ModelAndView CartList(String user_id) {
		mav = new ModelAndView();
		Map<String,Object>map = new HashMap<String,Object>();
		List<CartDTO>list = new ArrayList<CartDTO>();
		list = cartDAO.CartList(user_id); //장바구니 정보
		System.out.println(list);
		int sumMoney = cartDAO.sumMoney(user_id); // 장바구니 전체 금액 호출
		//장바구니 전체 금액에 따라 배송비 구분
		//배송료(10만원 >=100000 무료,  미만 >= 2500)
		int fee = sumMoney >=100000 ? 0 : 2500;
		map.put("list", list);
		map.put("count", list.size());
		map.put("sumMoney", sumMoney);
		map.put("fee", fee);
		map.put("allSum", sumMoney+fee);
		mav.addObject("map",map);
		mav.setViewName("CartV/CartList");
		return mav;
	}
	
	
	//장바구니 삭제
	public void CartDelete(int cart_id) {
		
		mav = new ModelAndView();
		
		cartDAO.CartDelete(cart_id);

	}
	//장바구니 수정
	public ModelAndView CartModify(int[] amount, String[] product_id, String user_id) {
		
		for(int i=0; i<product_id.length;i++) {
			
			CartDTO cart = new CartDTO();
			cart.setUser_id(user_id);
			cart.setProduct_id(product_id[i]);
			cart.setAmount(amount[i]);
			cartDAO.modifyCart(cart);	
		}
			
		mav.setViewName("redirect:/cartlist");	
		
		return mav;
	}
	
	//장바구니 금액 합계
	public int sumMoney(String user_id) {
		
		return cartDAO.sumMoney(user_id);
	}
	
	//장바구니 상품 확인
	public int countCart(String product_id,String user_id) {
		
		
		return cartDAO.CartCount(product_id, user_id);
	}
	
	//장바구니 상품 수량 변경
	public void updateCart(CartDTO cart) {
		
		cartDAO.CartUpdate(cart);
	
	}

	//구매진행
	public ModelAndView buy(String mid) {
		mav = new ModelAndView();
		MemberDTO memberview = mDAO.memberview(mid);
		Map<String,Object>map = new HashMap<String,Object>();
		List<CartDTO>list = new ArrayList<CartDTO>();
		list = cartDAO.CartList(mid); //장바구니 정보
		System.out.println(list);
		int sumMoney = cartDAO.sumMoney(mid); // 장바구니 전체 금액 호출
		//장바구니 전체 금액에 따라 배송비 구분
		//배송료(10만원 >=100000 무료,  미만 >= 2500)
		int fee = sumMoney >=100000 ? 0 : 2500;
		map.put("list", list);
		map.put("count", list.size());
		map.put("sumMoney", sumMoney);
		map.put("fee", fee);
		map.put("allSum", sumMoney+fee);
		mav.addObject("map",map);
		mav.addObject("memberview", memberview);
		mav.setViewName("CartV/Buying");
		return mav;
	
	}
  




	
	



}

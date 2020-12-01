package com.bodyshop.main.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bodyshop.main.dto.BuyingDTO;
import com.bodyshop.main.dto.CartDTO;

@Repository
public class CartDAO {
	
	@Autowired
	private SqlSessionTemplate sql;
	//장바구니 추가
	public int CartInsert(CartDTO cart) {
	
		return sql.insert("Cart.cartInsert",cart);
	}
	
	//장바구니 목록
	public List<CartDTO> CartList(String mid) {
	
		return sql.selectList("Cart.cartList",mid);
	}
	
	//장바구니 삭제
	public void CartDelete(int cart_id) {
		
		sql.update("Cart.deleteCart",cart_id);
	}	
	
	//장바구니 수정
	public void modifyCart(CartDTO cart) {
		
		sql.update("Cart.modifyCart",cart);
	}	
	
	
	
	//장바구니 금액 합계
	public int sumMoney(String mid) {
		
		return sql.selectOne("Cart.sumMoney",mid);
	}
	
	
	
	
	//장바구니 동일한 상품 레크도 확인
	public int CartCount(String product_id, String user_id) {
		Map<String,Object>map = new HashMap<String,Object>();
		map.put("product_id",product_id);
		map.put("user_id",user_id);
		return sql.selectOne("Cart.countCart",map);
	}
	//장바구니 상품수량 변경
	public void CartUpdate(CartDTO cart) {
		
		sql.update("Cart.updateCart",cart);
		
	}

	public void buy(BuyingDTO buying) {
		sql.insert("Cart.buy",buying);
		
	}


}

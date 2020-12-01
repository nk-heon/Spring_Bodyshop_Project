package com.bodyshop.main.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.bodyshop.main.dao.BuyDAO;
import com.bodyshop.main.dto.BuyingDTO;
import com.bodyshop.main.dto.ProductDTO;

@Service
public class BuyService {
	@Autowired
	private BuyDAO bDAO;
	
	private ModelAndView mav;

	public void buyinsert(BuyingDTO buy) {
		bDAO.buyinsert(buy);
		
	}

	public void productamount(BuyingDTO buy) {
		bDAO.productamount(buy);
		
	}

	public void cartdelete(BuyingDTO buy) {
		bDAO.cartdelete(buy);
		
	}

	public ModelAndView buylist(String pbmid) {
		mav = new ModelAndView();
		List<BuyingDTO> buylist = new ArrayList<BuyingDTO>();
		buylist = bDAO.buylist(pbmid);
		
		mav.addObject("buylist", buylist);
		mav.setViewName("buyv/BuyList");
		return mav;
	}

}

package com.bodyshop.main.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bodyshop.main.dao.CartDAO;
import com.bodyshop.main.dto.BuyingDTO;
import com.bodyshop.main.service.BuyService;

@Controller
public class BuyController {
	@Autowired
	private BuyService bService;
	
	private ModelAndView mav; 
	
	@RequestMapping(value="buyc")
	public ModelAndView buy(@RequestParam("pbnum") int[] pbnum,@RequestParam("pbname") String[] pbname,@RequestParam("pbpid") String[] pbpid,
			@RequestParam("pbmid") String[] pbmid, @RequestParam("pbpmid") String[] pbpmid, @RequestParam("pbphone") String[] pbphone,
			@RequestParam("pbmname") String[] pbmname, @RequestParam("pbamout") int[] pbamout,@RequestParam("allprice") int[] allprice,
			@RequestParam("pbaddress") String[] pbaddress, @RequestParam("pbprice") int[] pbprice,@RequestParam("pbfilename") String[] pbfilename) {
		mav = new ModelAndView();
		int sum = 0;
		List<BuyingDTO> buying = new ArrayList<BuyingDTO>();
		BuyingDTO buy = null;
		for(int i=0;i<pbnum.length;i++) {
			
			buy = new BuyingDTO();
			buy.setPbnum(pbnum[i]);
			buy.setPbmname(pbmname[i]);
			buy.setPbname(pbname[i]);
			buy.setPbpid(pbpid[i]);
			buy.setPbprice(pbprice[i]);
			buy.setPbpmid(pbpmid[i]);
		    buy.setPbmid(pbmid[i]);
			buy.setPbamout(pbamout[i]);
			buy.setPbaddress(pbaddress[i]);
			buy.setAllprice(allprice[i]);
			buy.setPbphone(pbphone[i]);
			buy.setPbfilename(pbfilename[i]);
			bService.buyinsert(buy);
			bService.productamount(buy);
			bService.cartdelete(buy);
			buying.add(buy);
			sum= sum+(pbprice[i]+pbamout[i]);
			
		}
		BuyingDTO buy1 = new BuyingDTO();
		buy1.setPbmname(pbmname[0]);
		buy1.setPbphone(pbphone[0]);
		buy1.setPbaddress(pbaddress[0]);
		buy1.setAllprice(sum);
		mav.addObject("buy", buy);
		mav.setViewName("CartV/koko");
	

	
		System.out.println("바잉값"+buying);

	
				return mav;
		
	}
	@RequestMapping(value="/buylist")
	public ModelAndView buylist(@RequestParam("pbmid") String pbmid) {
		
		mav = bService.buylist(pbmid);
		
		return mav;
	}
	
	
	
	
	
	/*@RequestMapping(value="/complete", method=RequestMethod.POST)
	public @ResponseBody ModelAndView buy(@ModelAttribute List<BuyingDTO> buy) {
		System.out.println("결제완료값:"+buy);
		return mav;
		
	}*/

}

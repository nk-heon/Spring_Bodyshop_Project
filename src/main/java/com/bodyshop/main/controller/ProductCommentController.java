package com.bodyshop.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bodyshop.main.dto.ProductCommentDTO;
import com.bodyshop.main.service.ProductCommentService;

@Controller
public class ProductCommentController {
	@Autowired
	private ProductCommentService pcService;
	private ModelAndView mav;
	//상품문의작성
	@RequestMapping(value="pcomment1")
	public ModelAndView pcomment1(@ModelAttribute ProductCommentDTO pcDTO) {
		mav = pcService.pcomment1(pcDTO);
		return mav;
	}
	//문의답변
	@RequestMapping(value="/pcommentre")
	public ModelAndView pcommentre(@RequestParam("pcnumber") int pcnumber,@RequestParam("pcpid") String pcpid) {
		ProductCommentDTO pcDTO = new ProductCommentDTO();
		pcDTO.setPcpid(pcpid);
		pcDTO.setPcnumber(pcnumber);
		mav = pcService.pcommentre(pcDTO);
		return mav;		
	}
	//문의답변1
	@RequestMapping(value="/pcommentre1")
	public ModelAndView pcommentre1(@ModelAttribute ProductCommentDTO pcDTO) {
		mav = pcService.pcommentre1(pcDTO);
		return mav;
	}
	//문의 상세보기
	@RequestMapping(value="/pcommenview")
	public ModelAndView pcommenview(@ModelAttribute ProductCommentDTO pcDTO) {
		mav = pcService.pcommenview(pcDTO);
			return mav;
		}

}


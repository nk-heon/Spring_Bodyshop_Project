package com.bodyshop.main.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.bodyshop.main.dao.ProductCommentDAO;
import com.bodyshop.main.dto.ProductCommentDTO;

@Service
public class ProductCommentService {
	@Autowired
	private ProductCommentDAO pcDAO;
	private ModelAndView mav;
	
	//상품문의작성
	public ModelAndView pcomment1(ProductCommentDTO pcDTO) {
		mav = new ModelAndView();
		if(pcDTO.getPcresult() == null) {
			pcDTO.setResult("미완료");
		}else {
			pcDTO.setResult("답변완료");
		}
		int writeResult = pcDAO.pcomment1(pcDTO);
		if(writeResult > 0)
			mav.setViewName("ProductV/PcommentSuccess");
		return mav;
	}
    //문의답변
	public ModelAndView pcommentre(ProductCommentDTO pcDTO) {
		ProductCommentDTO pcomment = new ProductCommentDTO();
		mav = new ModelAndView();
		pcomment = pcDAO.pcommentre(pcDTO);
		mav.addObject("pcomment", pcomment);
		mav.setViewName("ProductV/PcommentRe");
		return mav;
	}
	//문의답변1
	public ModelAndView pcommentre1(ProductCommentDTO pcDTO) {
		mav = new ModelAndView();
		int reResult = pcDAO.pcommentre1(pcDTO);
		if(reResult > 0)
			mav.setViewName("ProductV/PcommentreSuccess");
		return mav;
	}
	//문의 상세보기
	public ModelAndView pcommenview(ProductCommentDTO pcDTO) {
	    mav = new ModelAndView();
	    ProductCommentDTO pcomment = new ProductCommentDTO();
	    pcomment = pcDAO.pcommentre(pcDTO);
	    mav.addObject("pcview", pcomment);
		mav.setViewName("ProductV/PcommenView");
		return mav;
	}

}

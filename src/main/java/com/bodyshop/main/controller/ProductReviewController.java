package com.bodyshop.main.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bodyshop.main.dto.ProductReviewDTO;
import com.bodyshop.main.service.ProductReviewSerivce;

@Controller
@RequestMapping("/productreview/*")
public class ProductReviewController {
	@Autowired
	private ProductReviewSerivce prService;
	
	@RequestMapping(value="/previewwrite")
	public @ResponseBody List<ProductReviewDTO> previewwrite(@ModelAttribute ProductReviewDTO prDTO){
		List<ProductReviewDTO> prList = prService.prviewwrite(prDTO);
		return prList;
		
	}

}

package com.bodyshop.main.controller;


import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;

import com.bodyshop.main.dto.ProductDTO;
import com.bodyshop.main.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	
	private ModelAndView mav;
	//상품 등록
		@RequestMapping(value="/ProductWriteForm")
		public String ProductWriteForm() {
			
			
			return "ProductV/ProductWrite";
		}
		
		
		
		@RequestMapping(value="/productwrite")
		public ModelAndView ProductWrite(@ModelAttribute ProductDTO product) throws IllegalStateException, IOException {					
			
			mav = productService.ProductWrite(product);
			
			
			
			return mav;
		}
		//상품 목록
		@RequestMapping(value="/productlist")
		public ModelAndView ProductList() {
			
			mav = new ModelAndView();
			
			mav = productService.ProductList();
			
			
			return mav;
		}
		//상세 조회
		@RequestMapping(value="/productview")
		public ModelAndView ProductView(@RequestParam ("pid") String pid) {
			mav = new ModelAndView();
			
			mav = productService.ProductView(pid);
			
			
			
			
			return mav;
		}
		//상품문의
		@RequestMapping(value="/pcomment")
		public ModelAndView pcomment(@RequestParam("pid") String pid) {
			mav = productService.pcomment(pid);
			return mav;
		}
		
		//상품삭제	
		@RequestMapping(value="/productdelete")
		public ModelAndView ProductDelete(@RequestParam ("pid") String pid) {
			
			mav = new ModelAndView();
			
			mav = productService.ProductDelete(pid);
			
			
			return mav;
		}
		//상품 수정
		@RequestMapping(value="/productUpdateForm")
		public String ProductUpdateForm() {
			
			
			return "ProductV/ProductUpdate";
		}
		
		@RequestMapping(value="/productUpdate")
		public ModelAndView ProductUpdate(@RequestParam ("pid") String pid) {
			
			mav = new ModelAndView();
			
			mav = productService.ProductUpdate(pid);
			
			
			return mav;
		}
		@RequestMapping(value="/productuptateprocess")
		public ModelAndView ProductUpdateProcess(@ModelAttribute ProductDTO product) {
			
			mav = new ModelAndView();
			
			mav = productService.ProductUpdateProcess(product);
			
			
			return mav;
		}

}

package com.bodyshop.main.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bodyshop.main.dao.ProductCommentDAO;
import com.bodyshop.main.dao.ProductDAO;
import com.bodyshop.main.dao.ProductReviewDAO;
import com.bodyshop.main.dto.PagingDTO;
import com.bodyshop.main.dto.ProductCommentDTO;
import com.bodyshop.main.dto.ProductDTO;
import com.bodyshop.main.dto.ProductReviewDTO;

@Service
public class ProductService {
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private ProductReviewDAO prDAO;
	
	@Autowired ProductCommentDAO pcDAO;
	


	private static final int PAGE_LIMIT = 3;
	private static final int BLOCK_LIMIT = 5;
	
	private ModelAndView mav;
	
	//상품 등록처리
		public ModelAndView ProductWrite(ProductDTO product) throws IllegalStateException, IOException {
			
			mav = new ModelAndView();
			
			MultipartFile pfile = product.getPfile();
			String pfilename = pfile.getOriginalFilename();
			
			String savePath = "D:\\source\\spring\\BodyShop\\src\\main\\webapp\\resources\\uploadfile\\"+pfilename;
			
			if(!pfile.isEmpty()) {
				pfile.transferTo(new File(savePath));
			}
			product.setPfilename(pfilename);
			int WriteResult = productDAO.ProductWrite(product);
			if(WriteResult > 0) {
				mav.setViewName("redirect:/productlist");
			}else {
				mav.setViewName("BodyShopMain");	
			}
			return mav;
		}


		//상품 목록처리
		public ModelAndView ProductList() {
			
			mav = new ModelAndView();
			List<ProductDTO>productList = new ArrayList<ProductDTO>();
			
			productList = productDAO.ProductList();
			
			
			mav.addObject("productList",productList);
			mav.setViewName("ProductV/ProductList");
			
			
			
			return mav;
		}

		//상품 상세조회 처리
		public ModelAndView ProductView(String pid) {
			List<ProductReviewDTO> prList  = new ArrayList<ProductReviewDTO>();
			mav = new ModelAndView();
			ProductReviewDTO prDTO = new ProductReviewDTO();
			List<ProductCommentDTO> pcList = new ArrayList<ProductCommentDTO>();
			ProductCommentDTO pcDTO = new ProductCommentDTO();
			pcDTO.setPcpid(pid);
			pcList = pcDAO.pclist(pcDTO.getPcpid());
			prDTO.setPrid(pid);
			prList = prDAO.prList(prDTO.getPrid());
			
			ProductDTO productView = productDAO.ProductView(pid);
		    
			mav.addObject("pcList", pcList);
			mav.addObject("prList", prList);
			mav.addObject("productView",productView);
			mav.setViewName("ProductV/ProductView");

			return mav;
		}

		//상품삭제 처리
		public ModelAndView ProductDelete(String pid) {
			mav = new ModelAndView();
			int DeleteResult = productDAO.ProductDelete(pid);
			if(DeleteResult > 0) {
				mav.setViewName("redirect:/productlist");	
			}else {	
				mav.setViewName("BodyShopMain");	
			}
			return mav;
		}

		//상품 수정 처리
		public ModelAndView ProductUpdate(String pid) {
			mav = new ModelAndView();
			ProductDTO productUpdate = productDAO.ProductView(pid);
			mav.addObject("productUpdate",productUpdate);
			mav.setViewName("ProductV/ProductUpdate");
			return mav;
		}


		public ModelAndView ProductUpdateProcess(ProductDTO product) {
			mav = new ModelAndView();
			String pfilename="";
			//첨부파일 (상품 사진)이 변경되면
			if(!product.getPfile().isEmpty()) {
				
				pfilename = product.getPfile().getOriginalFilename();
				//디렉토리 - 파일 업로드
				String savePath = "E:\\source\\spring\\BodyShop\\src\\main\\webapp\\resources\\"+pfilename;
				try {
					
					new File(savePath).mkdirs();
					//임시디렉토리 (서버)에 저장된 파일을 지정된 디렉토리로 전송
					product.getPfile().transferTo(new File(savePath+pfilename));
				}catch(Exception e) {
					e.printStackTrace();
				}
				product.setPfilename(pfilename);		
			}
			
			
			
			
			int UpdateResult = productDAO.ProductUpdateProcess(product);
			System.out.println(product);
			if(UpdateResult > 0) {
				mav.setViewName("redirect:/productlist");
			}else {
				mav.setViewName("BodyShopMain");
			}
			return mav;
		}

        //상품문의
		public ModelAndView pcomment(String pid) {
			mav = new ModelAndView();
			ProductDTO pDTO = new ProductDTO();
			pDTO = productDAO.ProductView(pid);
			mav.addObject("pcomment", pDTO);
			mav.setViewName("ProductV/ProductComment");
			return mav;
		}
		
		public ModelAndView productListPaging(int page, String pproduct) {
			mav = new ModelAndView();
			PagingDTO paging = new PagingDTO();
			paging.setPproduct(pproduct);
			int listCount = productDAO.listCount(paging);
			int startRow = (page-1)*PAGE_LIMIT + 1;
			int endRow = page*PAGE_LIMIT;
			
			
			paging.setStartRow(startRow);
			paging.setEndRow(endRow);
			List<PagingDTO> productList = productDAO.productListPaging(paging);
			// 한페이지에 글3개, 전체글 13개 -> 필요한페이지 몇개?
			int maxPage = (int)(Math.ceil((double)listCount/PAGE_LIMIT));
			int startPage = (((int)(Math.ceil((double)page/BLOCK_LIMIT))) - 1) * BLOCK_LIMIT + 1;
			
			int endPage = startPage + BLOCK_LIMIT - 1;
			if(endPage>maxPage) { 
				endPage = maxPage; 
			}
			
			paging.setPage(page);
			paging.setStartPage(startPage);
			paging.setEndPage(endPage);
			paging.setMaxPage(maxPage);

			mav.addObject("paging", paging);
			mav.addObject("productList", productList);
			mav.setViewName("ProductV/ProductPaging");
			
			return mav;
		}
		
}

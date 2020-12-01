package com.bodyshop.main.service;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bodyshop.main.dao.ProductReviewDAO;
import com.bodyshop.main.dto.ProductReviewDTO;

@Service
public class ProductReviewSerivce {
	@Autowired
	private ProductReviewDAO prDAO;

	public List<ProductReviewDTO> prviewwrite(ProductReviewDTO prDTO) {
		int writeResult = prDAO.prviewwrite(prDTO);
		List<ProductReviewDTO> prList = new ArrayList<ProductReviewDTO>();
		if(writeResult > 0)
			prList = prDAO.prList(prDTO.getPrid());
		else
			prList = null;
		return prList;
	}

}

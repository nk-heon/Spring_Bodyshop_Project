package com.bodyshop.main.dao;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.bodyshop.main.dto.ProductReviewDTO;

@Repository
public class ProductReviewDAO {
	@Autowired
	private SqlSessionTemplate sql;

	public int prviewwrite(ProductReviewDTO prDTO) {
		return sql.insert("Preview.prwrite", prDTO);
	}

	public List<ProductReviewDTO> prList(String prid) {		
		return sql.selectList("Preview.prlist", prid);
	}

	
	
	

}

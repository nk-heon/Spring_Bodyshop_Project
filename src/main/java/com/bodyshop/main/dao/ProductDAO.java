package com.bodyshop.main.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bodyshop.main.dto.ProductDTO;

@Repository
public class ProductDAO {
	@Autowired
	private SqlSessionTemplate sql;
public int ProductWrite(ProductDTO product) {
		
		return sql.insert("Product.productWrite",product);
	}


	public List<ProductDTO> ProductList() {
		
		return sql.selectList("Product.productList");
	}


	public ProductDTO ProductView(String pid) {
		
		return sql.selectOne("Product.productView",pid);
	}


	public int ProductDelete(String pid) {
		
		return sql.delete("Product.productDelete",pid);
	}


	public int ProductUpdateProcess(ProductDTO product) {
		
		return sql.update("Product.productUpdateProcess",product);
	}


}

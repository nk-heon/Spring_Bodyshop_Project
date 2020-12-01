package com.bodyshop.main.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bodyshop.main.dto.ProductCommentDTO;

@Repository
public class ProductCommentDAO {
	@Autowired
	private SqlSessionTemplate sql;
    //상품문의
	public int pcomment1(ProductCommentDTO pcDTO) {
		return sql.insert("Pcomment.pcomment1", pcDTO);
	}
	public List<ProductCommentDTO> pclist(String pcpid) {
		return sql.selectList("Pcomment.pclist", pcpid);
	}
	public ProductCommentDTO pcommentre(ProductCommentDTO pcDTO) {
		return sql.selectOne("Pcomment.pcommentre", pcDTO);
	}
	public int pcommentre1(ProductCommentDTO pcDTO) {
		return sql.update("Pcomment.pcommentre1", pcDTO);
	}
	

}

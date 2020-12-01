package com.bodyshop.main.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bodyshop.main.dto.BuyingDTO;

@Repository
public class BuyDAO {
	@Autowired
	private SqlSessionTemplate sql;

	public void buyinsert(BuyingDTO buy) {
		sql.insert("Buy.buyinsert",buy);
		
	}

	public void productamount(BuyingDTO buy) {
		sql.update("Buy.productamount", buy);
		
	}

	public void cartdelete(BuyingDTO buy) {
		sql.delete("Buy.cartdelete", buy);
		
	}

	public List<BuyingDTO> buylist(String pbmid) {	
		return sql.selectList("Buy.buylist", pbmid);
	}

}

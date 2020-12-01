package com.bodyshop.main.dao;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bodyshop.main.dto.BoardCommentDTO;



@Repository
public class BoardCommentDAO {
	
	@Autowired
	private SqlSessionTemplate sql;

	public List<BoardCommentDTO> commentList(int acnum) {
		return sql.selectList("BoardComment.commentList", acnum);
	}

	public int commentWrite(BoardCommentDTO comment) {
		return sql.insert("BoardComment.commentWrite", comment);
	}

	

}

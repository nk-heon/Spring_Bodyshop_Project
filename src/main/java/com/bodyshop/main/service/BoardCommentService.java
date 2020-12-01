package com.bodyshop.main.service;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.bodyshop.main.dao.BoardCommentDAO;
import com.bodyshop.main.dto.BoardCommentDTO;






@Service
public class BoardCommentService {
	
	@Autowired
	private BoardCommentDAO boardcommentDAO;
	

	public List<BoardCommentDTO> commentWrite(BoardCommentDTO comment) {
		int writeResult = boardcommentDAO.commentWrite(comment);
		List<BoardCommentDTO> commentList = new ArrayList<BoardCommentDTO>();
		if(writeResult > 0)
			commentList = boardcommentDAO.commentList(comment.getAcnum());
		else
			commentList = null;
		
		return commentList;
	}


	
}

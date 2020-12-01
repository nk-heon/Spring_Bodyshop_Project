package com.bodyshop.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.bodyshop.main.dto.BoardCommentDTO;
import com.bodyshop.main.service.BoardCommentService;


@Controller
@RequestMapping("/comment/*")
public class BoardCommentController {
	@Autowired
	private BoardCommentService boardcommentService;
	

	
	@RequestMapping(value="commentwrite")
	public @ResponseBody List<BoardCommentDTO> commentWrite(
				@ModelAttribute BoardCommentDTO comment) {
		List<BoardCommentDTO> commentList = boardcommentService.commentWrite(comment);
		return commentList;
	}


}

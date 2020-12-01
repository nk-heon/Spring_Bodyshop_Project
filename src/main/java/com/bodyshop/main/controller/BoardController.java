package com.bodyshop.main.controller;

import java.io.IOException;



import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bodyshop.main.dto.BoardDTO;
import com.bodyshop.main.service.BoardService;


@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	private ModelAndView mav;


	
	
	//자유 게시판 페이지 이동
	@RequestMapping(value="/BulletinBoardForm")
	public String BulletinBoardListPagingForm() {
		return "redirect:/boardlistpaging";
	}
	
	//게시판 글쓰기 페이지 이동
	@RequestMapping(value="/boardwritefileform")
	public String BoardWriteFileForm() {
		return "boardv/BoardWriteFile";
	}
	
	//게시판 글등록 기능
	@RequestMapping(value="/boardwritefile")
	public ModelAndView boardWriteFile(@ModelAttribute BoardDTO board) throws IllegalStateException, IOException {
		mav = boardService.boardWriteFile(board);
		return mav;
	}
	
	//페이징 리스트 처리
	@RequestMapping(value="/boardlistpaging")
	public ModelAndView boardListpaging(
			@RequestParam(value="page",required=false,defaultValue="1") int page,@RequestParam("atype") String atype) {
		mav = boardService.boardListPaging(page,atype);
		return mav;
	}
	
	//상세조회 페이지
	@RequestMapping(value="/boardview")
	public ModelAndView boardView(@RequestParam("anum") int anum, 
			@RequestParam(value="page",required=false,defaultValue="1") int page) {
		mav = boardService.boardView(anum, page);
		return mav;
	}
	
	//게시판 글 삭제
	@RequestMapping(value="/boarddelete")
	public ModelAndView boardDelete(@RequestParam("anum") int anum) {
		mav = boardService.boardDelete(anum);
		return mav;
	}
	
	//게시판 글 수정 페이지
	@RequestMapping(value="/boardupdate")
	public ModelAndView boardUpdate(@RequestParam("anum") int anum) {
		mav = boardService.boardUpdate(anum);
		return mav;
	}
	
	//게시판 글 수정 처리
	@RequestMapping(value="/boardupdateprocess")
	public ModelAndView boardUpdateProcess(@ModelAttribute BoardDTO board) {
		mav = boardService.boardUpdateProcess(board);
		return mav;
	}
	
	//게시판 글 검색
	@RequestMapping(value="/boardsearch")
	public ModelAndView boardSearch(@RequestParam("searchtype") String searchtype,
			@RequestParam("keyword") String keyword, @RequestParam(value="page",required=false,defaultValue="1") int page) {
		mav = boardService.boardSearch(searchtype, keyword, page);
		return mav;
	}
	
	
}
	

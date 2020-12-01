package com.bodyshop.main.service;

import java.io.File;



import java.io.IOException;
import java.net.URLEncoder;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bodyshop.main.dao.BoardCommentDAO;
import com.bodyshop.main.dao.BoardDAO;
import com.bodyshop.main.dto.BoardCommentDTO;
import com.bodyshop.main.dto.BoardDTO;
import com.bodyshop.main.dto.BoardPageDTO;




@Service
public class BoardService {
	
	@Autowired
	private BoardDAO boardDAO;
	
	@Autowired
	private BoardCommentDAO boardcommentDAO;

	
	
	private ModelAndView mav;
	
	
	private static final int PAGE_LIMIT = 10;
	private static final int BLOCK_LIMIT = 9;

	//게시판 글 등록 처리
	public ModelAndView boardWriteFile(BoardDTO board ) throws IllegalStateException, IOException {
		String atype = board.getAtype();
		MultipartFile afile = board.getAfile();
		String afilename = afile.getOriginalFilename();
		mav = new ModelAndView();
		String savePath = "E:\\source\\spring\\BodyShop\\src\\main\\webapp\\resources\\uploadfile\\"+afilename;
		if(!afile.isEmpty()) {
			afile.transferTo(new File(savePath));
		}
		board.setAfilename(afilename);
		System.out.println(afilename);
		int writeResult = boardDAO.boardWriteFile(board);
		System.out.println("보드값"+board);
		System.out.println("넘기는타입"+atype);
		String encodeParam = URLEncoder.encode(atype, "UTF-8");
		if(writeResult > 0)
			mav.setViewName("redirect:/boardlistpaging?atype="+encodeParam);
		else
			mav.setViewName("boardv/BoardWriteFileFail");
		return mav;
	}

	//페이징 처리및 페이지
	public ModelAndView boardListPaging(int page, String atype) {
		mav = new ModelAndView();
		String types = atype;
		BoardPageDTO paging = new BoardPageDTO();
		paging.setTypes(types);
		int listCount = boardDAO.listCount(paging);
		int startRow = (page-1)*PAGE_LIMIT + 1;
		int endRow = page*PAGE_LIMIT;
		
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);
		
		List<BoardDTO> boardList = boardDAO.boardListPaging(paging);

		int maxPage = (int)(Math.ceil((double)listCount/PAGE_LIMIT));
		int startPage = (((int)(Math.ceil((double)page/BLOCK_LIMIT))) - 1) * BLOCK_LIMIT +1;
		
		int endPage = startPage + BLOCK_LIMIT - 1;
		if(endPage>maxPage) {
			endPage = maxPage;
		}
		
		paging.setPage(page);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		paging.setMaxPage(maxPage);
		
		
		mav.addObject("paging", paging);
		mav.addObject("boardList", boardList);
		mav.addObject("types", types);
		mav.setViewName("boardv/BulletinBoardListPaging");
		
		return mav;
	}
	
	//상세조회 페이지 이동
	public ModelAndView boardView(int anum, int page) {
		mav = new ModelAndView();
		boardDAO.boardHits(anum);
		BoardDTO boardView = boardDAO.boardView(anum);	
		List<BoardCommentDTO> commentList = boardcommentDAO.commentList(anum);
		mav.addObject("page",page);
		mav.addObject("boardView", boardView);
		mav.addObject("commentList", commentList);
		mav.setViewName("boardv/BoardView");
		return mav;
	}
	
	//게시판 글 삭제
	public ModelAndView boardDelete(int anum) {
		mav = new ModelAndView();
		int deleteResult = boardDAO.boardDelete(anum);
		if(deleteResult > 0)
			mav.setViewName("redirect:/boardlistpaging");
		else 
			mav.setViewName("boardv/BoardDeleteFail");
		return mav;
	}
	//게시판 글 수정 페이지 이동
	public ModelAndView boardUpdate(int anum) {
		mav = new ModelAndView();
		BoardDTO boardUpdate = boardDAO.boardView(anum);
		mav.addObject("boardUpdate", boardUpdate);
		mav.setViewName("boardv/BoardUpdate");
		return mav;
	}

	//게시판 글 수정 처리 부분
	public ModelAndView boardUpdateProcess(BoardDTO board) {
		mav = new ModelAndView();
		int updateResult = boardDAO.boardUpdate(board);
		if(updateResult > 0)
			mav.setViewName("redirect:/boardview?anum="+board.getAnum());
		else 
			mav.setViewName("boardview/BoardUpdateFail");
		return mav;
	}

	//게시판 글 검색
	public ModelAndView boardSearch(String searchtype, String keyword,int page) {
		mav = new ModelAndView();
		BoardPageDTO paging = new BoardPageDTO();
		String types = keyword;
		paging.setTypes(types);
		
		int listCount = boardDAO.listCount1(paging);
		int startRow = (page-1)*PAGE_LIMIT + 1;
		int endRow = page*PAGE_LIMIT;
		
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);
		List<BoardDTO> boardList = boardDAO.boardListPaging(paging);
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
		
		
		List<BoardDTO> searchList = boardDAO.boardSearch(searchtype, keyword);
		mav.addObject("types", types);
		mav.addObject("paging", paging);
		mav.addObject("boardList", boardList);
		mav.addObject("boardList", searchList);
		mav.setViewName("boardv/BulletinBoardListPaging");
		return mav;
	}
	
	
}

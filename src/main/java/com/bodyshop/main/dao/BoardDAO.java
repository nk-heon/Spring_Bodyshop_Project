package com.bodyshop.main.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bodyshop.main.dto.BoardDTO;
import com.bodyshop.main.dto.BoardPageDTO;

@Repository
public class BoardDAO {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	//게시판 글 등록 기능
	public int boardWriteFile(BoardDTO board) {
		return sql.insert("Board.boardWriteFile", board);
	}
	
	//게시판 글 리스트 카운트
	public int listCount(BoardPageDTO paging) {
		return sql.selectOne("Board.boardListCount", paging);
	}

	//게시판 글 페이징 처리
	public List<BoardDTO> boardListPaging(BoardPageDTO paging) {
		return sql.selectList("Board.boardListPaging", paging);
	}
	
	//게시판 글 상세 조회
	public BoardDTO boardView(int anum) {
		return sql.selectOne("Board.boardView", anum);
	}

	//게시판 글 조회수
	public void boardHits(int anum) {
		sql.update("Board.boardHits", anum);
		
	}

	//게시판 글 삭제
	public int boardDelete(int anum) {
		return sql.delete("Board.boardDelete", anum);
	}

	//게시판 글 수정 처리 기능
	public int boardUpdate(BoardDTO board) {
		return sql.update("Board.boardUpdate", board);
	}

	//게시판 글 검색
	public List<BoardDTO> boardSearch(String searchtype, String keyword) {
		Map<String, String> searchMap = new HashMap<String, String>();
		searchMap.put("type", searchtype);
		searchMap.put("word", keyword);
		return sql.selectList("Board.boardSearch", searchMap);
	}

	public int listCount1(BoardPageDTO paging) {
		return sql.selectOne("Board.boardListCount1", paging);
		
	}

}

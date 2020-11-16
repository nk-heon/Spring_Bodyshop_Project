package com.bodyshop.main.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bodyshop.main.dto.MemberDTO;

@Repository
public class MemberDAO {
	@Autowired
	private SqlSessionTemplate sql;
    //회원가입
	public int memberjoin(MemberDTO member) {
		if(member.getKakaoId() != null) 
			return sql.insert("Member.kakaomemberjoin", member);
			
			else if(member.getNaverId() != null)
				return sql.insert("Member.navermemberjoin", member);
			else
				return sql.insert("Member.memberjoin", member);	
		}
    //아이디중복체크
	public String idOverlap(String mid) {
		return sql.selectOne("Member.idOverlap", mid);
	}
    //이메일중복체크
	public String emOverlap(MemberDTO member) {
		return sql.selectOne("Member.emOverlap", member);
	}
    //가입이메일처리
	public void verifymember(MemberDTO member) {
         sql.update("Member.verifymember", member);
		
	}
	//멤버등급보기
	public String mclass(MemberDTO member) {
		return sql.selectOne("Member.mclass", member);
	}
	//로그인
	public String memberlogin(MemberDTO member) {
		return sql.selectOne("Member.memberlogin", member);
	}
	//이메일 벨류값확인
	public String emailResult(MemberDTO member) {
		return sql.selectOne("Member.emailresult", member);
	}
	//카카오로그인
	public String kakaologin(String kakaoId) {
		return sql.selectOne("Member.kakaologin",kakaoId);
	}
	//카카오 로그인 멤버등급보기
	public String mclass(String kakaoId) {
		return sql.selectOne("Member.mclasskakao", kakaoId);
	}
	//카카오로그인 이메일벨류값확인
	public String emailResult(String kakaoId) {
		return sql.selectOne("Member.emailresultkakao", kakaoId);
	}
	//네이버로그인 멤버등급보기
	public String mclassnaver(String naverId) {
		return sql.selectOne("Member.mclassnaver", naverId);
	}
	//네이버 로그인 이메일벨류값 확인
	public String emailResultnaver(String naverId) {
		return sql.selectOne("Member.emailresultnaver", naverId);
		}
	public String naverLogin(String naverId) {
		return sql.selectOne("Member.naverlogin", naverId);
	}
	//회원목록 조회
	public List<MemberDTO> memberlist() {
		return sql.selectList("Member.memberlist");
		
	}
	//상세조회
	public MemberDTO memberview(String mid) {
		return sql.selectOne("Member.memberview", mid);
	}
	//정보수정
	public int memberupdateprocess(MemberDTO member) {
		return sql.update("Member.memberupdate", member);
	}
	//삭제
	public int memberdelete(String mid) {
		return sql.delete("Member.memberdelete", mid);
	}
	
	

}

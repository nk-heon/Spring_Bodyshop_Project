package com.bodyshop.main.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.codehaus.jackson.JsonNode;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bodyshop.main.dao.MemberDAO;
import com.bodyshop.main.dto.MemberDTO;


@Service
public class MemberService {
	
	@Autowired
	private MemberDAO mDAO;
	
	@Autowired
	private HttpSession session;
	
	private ModelAndView mav;
     
	//회원가입
	public ModelAndView memberjoin(MemberDTO member) throws IllegalStateException, IOException {
		mav = new ModelAndView();
		MultipartFile mfile = member.getMfile();
		String mfilename = mfile.getOriginalFilename();
		
		String savePath = "E:\\source\\spring\\BodyShop\\src\\main\\webapp\\resources\\uploadfile\\"+mfilename;
		
		if(!mfile.isEmpty()) {
			mfile.transferTo(new File(savePath));
		}
		member.setMfilename(mfilename);
		int joinResult = mDAO.memberjoin(member);
		if(joinResult > 0) {
			//회원가입 성공시 MemberLogin.jsp출력
			mav.setViewName("memberv/MailSuccess");
		}else {
			//회원가입 실패시 MemberJoinFail.출력
			mav.setViewName("MemberJoinFail");
		}
		
		return mav;
		
	}
    //아이디 중복확인
	public String idOverlap(String mid) {
		String checkResult = mDAO.idOverlap(mid);
		String resultMsg = null;
		if(checkResult == null) {
			resultMsg = "OK";
		}else {
			resultMsg = "NO";
		}
		return resultMsg;
	}
	//이메일 중복확인
	public String emOverlap(MemberDTO member) {
		String checkResult = mDAO.emOverlap(member);
		String resultMsg = null;
		System.out.println("이메일중복값:"+checkResult);
		if(checkResult == null) {
			resultMsg = "OK";
		}else {
			resultMsg = "NO";
		}
		return resultMsg;
	}
	//아이디 찾기
	public String idserch(MemberDTO member) {
		String resultMsg = null;
		String checkResult = mDAO.idserch(member);
		System.out.println("메세지값"+checkResult);
		if(checkResult != null) {
			resultMsg = checkResult;
		}else {
			resultMsg = "no";
		}
		return resultMsg;
	}
	//비밀번호 찾기
	public String pwserch(MemberDTO member) {
		String resultMsg = null;
		String checkResult = mDAO.pwserch(member);
		System.out.println("서비스 리절트값"+checkResult);
		if(checkResult == null) {
			resultMsg = "NO";
		}else {
			resultMsg = "OK";
		}
		return resultMsg;
	}
	//회원가입 이메일처리
	public void verifymember(MemberDTO member) {
            mDAO.verifymember(member);	
	}
	//로그인처리
	public ModelAndView memberlogin(MemberDTO member) {
		mav = new ModelAndView();
		String mclass = mDAO.mclass(member);
		String loginId = mDAO.memberlogin(member);
		
		String emailResult = mDAO.emailResult(member);
		System.out.println("abcid="+mclass);
		System.out.println("아이디:"+loginId);
		System.out.println("이메일"+emailResult);
	
		if(loginId != null) {
			if(emailResult.equals("Y")) {
				session.setAttribute("mclass", mclass);
				session.setAttribute("loginId", loginId);
				mav.setViewName("home");
				System.out.println("abcId값"+mclass);
				
			}else{
				mav.setViewName("memberv/MemberLogin");
				mav.addObject("notVerify", true);
			}
			
			}else {
				mav.setViewName("memberv/MemberLogin");
				mav.addObject("notExist", true);
			
			}
		return mav;
		}
	//카카오로그인
	public ModelAndView kakaologin(JsonNode profile) {
		mav = new ModelAndView();
		String kakaoId = profile.get("id").asText();
		
		String mclass = mDAO.mclass(kakaoId);
		String emailResult = mDAO.emailResult(kakaoId);
		String loginId = mDAO.kakaologin(kakaoId);
		if(loginId != null) {
			if(emailResult.equals("Y")) {
		session.setAttribute("loginId", loginId);
		session.setAttribute("mclass", mclass);
		mav.setViewName("Main");
			}else {
				mav.setViewName("memberv/MemberLogin");
				mav.addObject("notVerify", true);
			}
		}
		return mav;
		
	}
	public ModelAndView naverlogin(String profile) throws ParseException {
		mav = new ModelAndView();
		JSONParser parser = new JSONParser();
		Object obj = parser.parse(profile);
		JSONObject naverUser = (JSONObject)obj;
		JSONObject userInfo = (JSONObject)naverUser.get("response");
		String naverId = (String)userInfo.get("id");
		String mclass = mDAO.mclassnaver(naverId);
		String emailResult = mDAO.emailResultnaver(naverId);
		String loginId = mDAO.naverLogin(naverId);
		if(loginId != null) {
			if(emailResult.equals("Y")) {
		session.setAttribute("loginId", loginId);
		session.setAttribute("mclass", mclass);
		mav.setViewName("Main");
			}else {
				mav.setViewName("memberv/MemberLogin");
				mav.addObject("notVerify", true);
			}
		}
		return mav;
		
		
	}
	//회원목록 조회
	public ModelAndView memberlist() {
		mav = new ModelAndView();
		List<MemberDTO> memberlist = mDAO.memberlist();
		
		mav.addObject("memberlist", memberlist);
		mav.setViewName("memberv/MemberList");
		return mav;
	}
	//상세조회
	public ModelAndView memberview(String mid) {
		mav = new ModelAndView();
		MemberDTO memberview = mDAO.memberview(mid);
		
		mav.addObject("memberview", memberview);
		mav.setViewName("memberv/MemberView");
		return mav;
	}
	//정보수정1
	public ModelAndView memberupdate(String mid) {
		mav = new ModelAndView();
		// String mid = (String)session.getAttribute("loginId"); (세션)
		MemberDTO memberupdate = mDAO.memberview(mid);
		
		mav.addObject("memberupdate", memberupdate);
		mav.setViewName("memberv/MemberUpdate");
		return mav;
	}
	//정보수정 2
	public ModelAndView memberupdateprocess(MemberDTO member) throws IllegalStateException, IOException {
		mav = new ModelAndView();
		MultipartFile mfile = member.getMfile();
		String mfilename = mfile.getOriginalFilename();
		
		String savePath = "E:\\source\\spring\\BodyShop\\src\\main\\webapp\\resources\\uploadfile\\"+mfilename;
		
		if(!mfile.isEmpty()) {
			mfile.transferTo(new File(savePath));
		}
		member.setMfilename(mfilename);
		int memberupdateResult = mDAO.memberupdateprocess(member);

		if(memberupdateResult > 0) {
			mav.setViewName("Main");
		}else {
			mav.setViewName("UpdateFail");
		}
		return mav;
	}
	//삭제
	public ModelAndView memberdelete(String mid) {
		mav = new ModelAndView();
		int deleteResult = mDAO.memberdelete(mid);
		
		if(deleteResult > 0) {
			mav.setViewName("redirect:/memberlist");
			
		}else {
			mav.setViewName("DelteFail");
		}
		return mav;
	}
	//비밀번호찾기 비번변경
	public void pwupdate(MemberDTO member) {
		System.out.println("비번찾기 받는값"+member);
		mDAO.pwupdate(member);
		
	}
	
	
	


}

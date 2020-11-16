package com.bodyshop.main.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.JsonNode;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bodyshop.main.MailHandler;
import com.bodyshop.main.api.KakaoJoinApi;
import com.bodyshop.main.api.KakaoLoginApi;
import com.bodyshop.main.api.NaverJoinApi;
import com.bodyshop.main.api.NaverLoginApi;
import com.bodyshop.main.dto.MemberDTO;
import com.bodyshop.main.service.MemberService;
import com.github.scribejava.core.model.OAuth2AccessToken;




@Controller
public class MemberController {
	
	@Autowired
	private JavaMailSender mailSender;
	@Autowired
	private MemberService mService;
	
	private ModelAndView mav; 
	
	@Autowired
    private HttpSession session;
	
	@Autowired
	private KakaoJoinApi kakaojoinApi;
	
	@Autowired
	private KakaoLoginApi kakaoLoginApi;
	
	@Autowired
	private NaverJoinApi naverJoinApi;
	
	@Autowired
	private NaverLoginApi naverLoginApi;
	
	@RequestMapping(value = "/Join")
	public String join() {
		return "Join";
	}
	//일반회원가입 주소이동
	@RequestMapping(value="/generalmemberjoinform")
	public String memberjoinform() {
		return "memberv/GeneralMemberJoin";
	}
	//판매자 회원가입 주소이동
	@RequestMapping(value="/sellermemberjoinform")
	public String sellermemberjoinform() {
		return "memberv/SellerMemberJoin";
	}
	//트레이너 회원가입 주소이동
	@RequestMapping(value="/trainermemberjoinform")
	public String trainermemberjoinform() {
		return "memberv/TrainerMemberJoin";
	}
	//로그인 페이지 주소이동
	@RequestMapping(value="/memberloginform")
	public String memberloginform() {
		return "memberv/MemberLogin";
	}
	//회원가입
	@RequestMapping(value="/memberjoin")
	public ModelAndView memberjoin(@ModelAttribute MemberDTO member) throws MessagingException, UnsupportedEncodingException, IllegalStateException, IOException {
		System.out.println("---> mybatis로 insertMember() 기능 처리 및 해당 이메일로 이메일 발송");
		System.out.println(member.toString());
		member.setMemail(member.getMemailid()+"@"+member.getMedomain());
		mav = mService.memberjoin(member);
		MailHandler sendMail = new MailHandler(mailSender);
		sendMail.setSubject("[이메일 인증]");
		sendMail.setText(new StringBuffer().append("<h1>메일인증</h1>")
				.append("Body Shop에 가입해주셔서 감사합니다.<br><a href='http://localhost:8091/main/verify.do?memailid=" + member.getMemailid() + "&medomain=" + member.getMedomain())
				.append("' target='_blenk'>이메일 인증 확인</a>").toString());
		sendMail.setFrom("BodyShop@BodyShop.com", "Body Shop");
		sendMail.setTo(member.getMemailid() + "@" + member.getMedomain());
		sendMail.send();
		return mav;
 }
	
	//메일처리
		@RequestMapping(value="/verify.do")
		public String signSuccess(@RequestParam ("memailid") String memailid,@RequestParam ("medomain") String medomain) {
			System.out.println("이메일 인증기능 처리");
			MemberDTO member = new MemberDTO();
			System.out.println("이메일:"+memailid);
			System.out.println("도메인"+medomain);
			member.setMemailid(memailid);
			member.setMedomain(medomain);
			mService.verifymember(member);
			return "memberv/signSuccess";
			
		}
	
	//아이디 중복확인
		@RequestMapping(value="/idoverlap")
		public @ResponseBody String idOverlap(@RequestParam("mid") String mid) {
			System.out.println("전달받은 값"+mid);
			String resultMsg = mService.idOverlap(mid);
			return resultMsg;
		}
		
	//이메일 중복확인
	@RequestMapping(value="/emoverlap")
	public @ResponseBody String emOverlap(@ModelAttribute MemberDTO member) {
			System.out.println("전달받은 값"+member.getMemailid());
			System.out.println("전달받은 값"+member.getMedomain());
			String resultMsg = mService.emOverlap(member);
			return resultMsg;
		}
	//로그인
		@RequestMapping(value="/memberlogin")
		public ModelAndView memberlogin(@ModelAttribute MemberDTO member) {
			
			mav = mService.memberlogin(member);
			return mav;
		}
		//카카오 서버 로그인
		@RequestMapping(value="/kakaojoin")
		public ModelAndView kakaojoin(HttpSession session) {
			
			String kakaoUrl = kakaojoinApi.getAuthorizationUrl(session);
			mav = new ModelAndView();
			mav.addObject("kakaoUrl", kakaoUrl);
			mav.setViewName("memberv/KakaoLogin");
			
			return mav;
		}
		//카카오 서버 인증 통과 후 처리
		@RequestMapping(value="/kakaojoinok")
		public ModelAndView kakaojoinOK(@RequestParam("code") String code, HttpSession session) {
			
			JsonNode token = kakaojoinApi.getAccessToken(code);
			JsonNode profile = kakaojoinApi.getKakaoUserInfo(token.path("access_token"));
			System.out.println("profile"+profile);
			//profile에 담긴 id 값을 가지고 MemberJoin.jsp로 ㅣ동
			String kakaoId = profile.get("id").asText();
			mav = new ModelAndView();
			mav.addObject("kakaoId", kakaoId);
			mav.setViewName("memberv/GeneralMemberJoin");
			return mav;
		}
		//카카오 로그인
		@RequestMapping(value="/kakaologin")
		public ModelAndView kakaologin(HttpSession session) {
			
			String kakaoUrl = kakaoLoginApi.getAuthorizationUrl(session);
			mav = new ModelAndView();
			mav.addObject("kakaoUrl", kakaoUrl);
			mav.setViewName("memberv/KakaoLogin");
			
			return mav;
		}
		@RequestMapping(value="/kakaologinok")
		public ModelAndView kakaologinok(@RequestParam("code") String code) {
			JsonNode token = kakaoLoginApi.getAccessToken(code);
			JsonNode profile = kakaoLoginApi.getKakaoUserInfo(token.path("access_token"));
			
			mav = mService.kakaologin(profile);
			return mav;
		}
		//네이버 서버 로그인
		@RequestMapping(value="/naverjoin")
		public ModelAndView naverjoin(HttpSession session) {
			String naverUrl = naverJoinApi.getAuthorizationUrl(session);
			mav = new ModelAndView();
			mav.addObject("naverUrl", naverUrl);
			mav.setViewName("memberv/NaverLogin");
			return mav;
		}
		//네이버 서버 인증 통과 후 처리
		@RequestMapping(value="/naverjoinok")
		public ModelAndView naverJoinOk(@RequestParam("code") String code,@RequestParam("state") String state,HttpSession session) throws IOException, ParseException {
		mav = new ModelAndView();
		OAuth2AccessToken oauthToken = naverJoinApi.getAccessToken(session, code, state);
		String profile = naverJoinApi.getUserProfile(oauthToken);
		JSONParser parser = new JSONParser();
		
		Object obj = parser.parse(profile);
		
		JSONObject naverUser = (JSONObject)obj;
		JSONObject userInfo = (JSONObject)naverUser.get("response");
		String naverId = (String) userInfo.get("id");
		
		mav.addObject("naverId", naverId);
		mav.setViewName("memberv/GeneralMemberJoin");
		
		return mav;

	}
		//네이버 로그인
		@RequestMapping(value="/naverlogin")
		public ModelAndView naverlogin(HttpSession session) {
			String naverUrl = naverLoginApi.getAuthorizationUrl(session);
			mav = new ModelAndView();
			mav.addObject("naverUrl", naverUrl);
			mav.setViewName("memberv/NaverLogin");
			return mav;
		}
		@RequestMapping(value="/naverloginok")
		public ModelAndView naverLoginOk(@RequestParam("code") String code,@RequestParam("state") String state,HttpSession session) throws IOException, ParseException {
			OAuth2AccessToken oauthToken = naverLoginApi.getAccessToken(session, code, state);
			String profile = naverJoinApi.getUserProfile(oauthToken);
			mav = mService.naverlogin(profile);
			
			return mav;
		}
		//회원 목록 조회
		//목록조회
		@RequestMapping(value="/memberlist")
		public ModelAndView memberlist(){
			mav = new ModelAndView();
			mav = mService.memberlist();
			return mav;
			
		}
		//상세조회
		@RequestMapping(value="/memberview")
		public ModelAndView membeeview(@RequestParam("mid") String mid) {
			mav = new ModelAndView();
			mav = mService.memberview(mid);
			return mav;
		}
		//정보수정1
		@RequestMapping(value="/memberupdate")
		public ModelAndView memberupdate(@RequestParam("mid") String mid) {
			mav = new ModelAndView();
			mav = mService.memberupdate(mid);
			return mav;
		}
		//정보수정2
		@RequestMapping(value="/memberupdateprocess")
		public ModelAndView memberupdateprocess(@ModelAttribute MemberDTO member) throws IllegalStateException, IOException {
			mav = new ModelAndView();
			mav = mService.memberupdateprocess(member);
			return mav;
		}
		//로그아웃
		@RequestMapping(value="/memberlogout")
		public String memeberlogout() {
			
		   session.invalidate();
		   
		   return "memberv/MemberLogin";
	}
		//삭제
		@RequestMapping(value="/memberdelete")
		public ModelAndView memberdelete(@RequestParam("mid") String mid) {
			mav = new ModelAndView();
			mav = mService.memberdelete(mid);
			return mav;
		}
}
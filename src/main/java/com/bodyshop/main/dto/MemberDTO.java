package com.bodyshop.main.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberDTO {
	private String mid;
	private String mpassword;
	private String mname;
	private String mpostnum;
	private String maddress1;
	private String maddress2;
	private String maddress3;
	private String mphone;
	private String memail;
	private String memailid;
	private String medomain;
	private String mbirth;
	private String mclass;
	private String mverify;
	private String mblack;
	private String mfavorite;
	private String mcontents;
	
	private MultipartFile mfile;
	private String mfilename;
	
	
	private String kakaoId;
	private String naverId;

}

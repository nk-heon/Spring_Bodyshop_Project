package com.bodyshop.main.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardDTO {
	private String amid;
	private int anum;
	private String adate;
	private String atype;
	private String atitle;
	private String acontents;
	private int ahits;
	
	private MultipartFile afile;
	private String afilename;
	
}

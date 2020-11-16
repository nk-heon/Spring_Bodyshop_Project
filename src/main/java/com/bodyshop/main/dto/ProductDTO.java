package com.bodyshop.main.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ProductDTO {
	private String pproduct;
	private String pmid;
	private String pid;
	private String pname;
	private String pprice;
	private String pstock;
	private String pdesc;
	
	private MultipartFile pfile;
	private String pfilename;

}

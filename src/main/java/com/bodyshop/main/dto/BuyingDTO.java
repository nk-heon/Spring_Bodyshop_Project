package com.bodyshop.main.dto;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BuyingDTO {
	private int pbnum;
	private String pbname;
	private int pbprice;
	private String pbpid;
	private String pbmid;
	private String pbpmid;
	private String pbfilename;
	private int pbamout;
	private String pbaddress;
	private String pbphone;
	private int allprice;
	private String pbmname;
	private List<BuyingDTO> buylist;

	

}

package com.bodyshop.main.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CartDTO {
	
	private int cart_id;
	private String user_id;
	private String product_id;
	private int amount;
	private String mname;
	private String pname;
	private String pprice;
	private String pfilename;
	private int money;
	private String sale_id;
	
	
	public CartDTO(){
		
		super();
		
	}



}

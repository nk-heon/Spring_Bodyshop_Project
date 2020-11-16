package com.bodyshop.main.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ProductReviewDTO {
	private int prnumber;
	private String prmid;
	private String prpmid;
	private String prcontents;
	private String prid;
	private int star;

}

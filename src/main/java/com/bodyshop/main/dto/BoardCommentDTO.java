package com.bodyshop.main.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardCommentDTO {
	private int cnum;
	private int acnum;
	private String cwriter;
	private String ccontents;

}

package org.ict.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class ReplyVO {
	
	private int rno;
	private int bno;
	private String replytext;
	private String replyer;
	
	private Date regdate;
	private Date updatedate;
	
}

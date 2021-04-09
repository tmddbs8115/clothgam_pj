package org.ict.domain;

import lombok.Data;

@Data
public class VoteVO {

	private int cglikeno;
	private int cgupcno;
	private int cgdowncno;
	private int cglike_cnt;
	private String cgupcimg;
	private String cgdowncimg;
	private boolean cgcgender;
	private boolean cggender;
	private int cgage;
	
	private boolean next;
}

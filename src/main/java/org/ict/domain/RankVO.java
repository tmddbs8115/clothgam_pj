package org.ict.domain;

import lombok.Data;

@Data
public class RankVO {
	

	private Integer cglikeno;
	private Integer cgupcno;
	private Integer cgdowncno;
	private String cgupclink;
	private String cgdownclink;
	private String cgupcimg;
	private String cgdowncimg;
	
	private boolean cgupcgen;
	private boolean cgdowncgen;
	private int cglike_cnt;
	
	private String cgThumbImg;
}

package org.ict.domain;

import lombok.Data;

@Data
public class VoteVO {

	private int cgmixno;
	private int cgupcno;
	private int cgdowncno;
	private int cglike_cnt;
	private boolean cgcgender;
	private boolean cggender;
	private int cgage;
}

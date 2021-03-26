package org.ict.service;

import org.ict.domain.VoteVO;

public interface VoteService {

	public void upcount(VoteVO vote);
	
	public VoteVO load(Long cgmixno);

}

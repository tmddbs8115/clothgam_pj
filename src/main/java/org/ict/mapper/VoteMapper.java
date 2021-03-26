package org.ict.mapper;

import org.ict.domain.VoteVO;

public interface VoteMapper {
	
	public void update(VoteVO vote);
	
	public VoteVO read(Long cgmixno);

	
	
}

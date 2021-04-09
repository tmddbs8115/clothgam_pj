package org.ict.mapper;

import java.util.List;

import org.ict.domain.VoteVO;

public interface VoteMapper {
	
	
	public List<VoteVO> getList();

//	public void update(VoteVO vote);
	public int update(int vo);

	public VoteVO read(int cglikeno);
	
	public VoteVO likeNum(int cglikeno);

	public int[] num();
	
}

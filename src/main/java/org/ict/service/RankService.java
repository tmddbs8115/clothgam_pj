package org.ict.service;

import java.util.List;

import org.ict.domain.RankVO;

public interface RankService {

	public List<RankVO> cgList();
	
	public RankVO get(int cglikeno);
	
	public List<RankVO> getLikeList();
	
	public List<RankVO> rankList();
	
	
}

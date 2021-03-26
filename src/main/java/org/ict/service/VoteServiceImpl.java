package org.ict.service;

import org.ict.domain.VoteVO;
import org.ict.mapper.VoteMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VoteServiceImpl implements VoteService{
	
	@Autowired
	private VoteMapper mapper;

	@Override
	public void upcount(VoteVO vote) {
		mapper.update(vote);
		
	}

	@Override
	public VoteVO load(Long cgmixno) {
		
		return mapper.read(cgmixno);
	}

}

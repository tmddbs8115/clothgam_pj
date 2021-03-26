package org.ict.mapper;

import org.ict.domain.VoteVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class VoteMapperTests {
	
	
	@Autowired
	private VoteMapper mapper;
	
	@Test
	public void testRead() {
		
		mapper.read(1L);
	}
//	@Test
	public void testUpdate() {
		VoteVO vote = new VoteVO();
		
		vote.setCgmixno(1);
		
		mapper.update(vote);
	}

}

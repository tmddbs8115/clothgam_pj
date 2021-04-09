package org.ict.service;

import java.util.List;

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
public class VoteServiceTests {

	@Autowired
	private VoteService service;
	
	
	@Test
	public void testLoad() {
		
//		List<VoteVO> vote = service.load(1L);
		
//		log.info(vote);
		
		
	}
	
//	@Test
	public void testUpcount() {
		
		List<VoteVO> vote = (List<VoteVO>) new VoteVO();
		
//		vote = service.load(1L);
		

		service.upcount((VoteVO) vote);
		
		
		
	}
	
	
}

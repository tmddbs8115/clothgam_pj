package org.ict.controller;

import org.aspectj.lang.annotation.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
//컨트롤러 테스트시에 추가로 붙는 어노테이션
@WebAppConfiguration
//컨트롤러는 실제 웹사이트 접속처럼 처리하기 때문에 서버관련 설정이 된
//servlet-context.xml도 같이 인식시켜야 작동함
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", 
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@Log4j
public class VoteControllerTests {

	@Autowired
	private WebApplicationContext ctx;

	
	//가상브라우저 선언
	private MockMvc mockMvc;
	
	//테스트코드 실행 전 우선 mockMvc객체를 초기화 합니다.
	@org.junit.Before
	public void setup() {
		this.mockMvc =
				MockMvcBuilders.webAppContextSetup(ctx).build();
		
	}
	
	
	
	@Test
	public void testLoad() throws Exception{
		mockMvc.perform(MockMvcRequestBuilders.get("/vote/read"))
						.andReturn()
						.getModelAndView()
						.getModelMap();
						
		
	}
	
	
	
	
}

package org.ict.controller;

import org.ict.domain.VoteVO;
import org.ict.service.VoteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/vote/*")
public class VoteController {

	
	@Autowired
	private VoteService service;
	
	@RequestMapping("/read")
	public String load(Model model, Long cgmixno) {
		
		
		model.addAttribute("read", service.load(cgmixno));
		
		return "/vote/read";
	}
	
	
	
	
}

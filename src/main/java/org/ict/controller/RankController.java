package org.ict.controller;

import org.ict.domain.RankVO;
import org.ict.service.RankService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/rank/*")
public class RankController {

	@Autowired
	private RankService service;
	
	
	@GetMapping("/list")
	public void list(Model model) {

		model.addAttribute("list", service.getLikeList());
		
	}
	
	@GetMapping("/detail")
	public String get(Model model, Integer cglikeno) {
		
		model.addAttribute("rank", service.get(cglikeno));
		
		return "/list";
	}
	
	@GetMapping("/categori")
	public void categori() {
		
		
	}
	
	
//	@GetMapping("/get")
//	public void get(Long cgrno, Model model) {
//		
//		cgrno = 1L;
//		model.addAttribute("board", service.get(cgrno));
//	}
	
	
}//con

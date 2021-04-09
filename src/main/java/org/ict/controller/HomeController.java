package org.ict.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.ict.domain.VoteVO;
import org.ict.service.VoteService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jdk.internal.org.jline.utils.Log;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@Autowired
	private VoteService service;
	
	@GetMapping("vote")
	public String main(Model model, VoteVO vo) {
		
		
		int number1 = (int)(Math.random() * service.list().length)+1;

		int number2 = (int)(Math.random() * service.list().length)+1;
	
		if (number1 == number2) {
			number2 += 1;
		}else if(number2 > service.list().length) {
			number2 -= 2;
		}
		
		model.addAttribute("list", number1);
		model.addAttribute("listA", number2);
		
		
		return "/vote/read";
	}
	@GetMapping("/new")
	public void newtest(){
		
	}

}

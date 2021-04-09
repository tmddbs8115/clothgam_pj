package org.ict.controller;


import java.util.List;

import org.ict.domain.ReplyVO;
import org.ict.domain.VoteVO;
import org.ict.service.VoteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import jdk.internal.org.jline.utils.Log;
import lombok.extern.log4j.Log4j;


@RestController
@Log4j
@RequestMapping("/vote/*")
public class VoteController {

	
	@Autowired
	private VoteService service;
	
	@GetMapping(value="/read", produces= { MediaType.APPLICATION_JSON_UTF8_VALUE })
	public @ResponseBody ResponseEntity<List<VoteVO>> list(){
	    
		ResponseEntity<List<VoteVO>> entity = null;

	      try {
	         entity = new ResponseEntity<>(service.getList(), HttpStatus.OK);
	      } catch (Exception e) {
	         e.printStackTrace();
	         entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
	      }
		
	      return entity;

	}
	
	@GetMapping("/read/{cglikeno}")
	public ResponseEntity<VoteVO> likeDetail(@PathVariable("cglikeno") int cglikeno){
		
		ResponseEntity<VoteVO> entity = null;
		
		try {
			
			entity = new ResponseEntity<VoteVO>(service.get(cglikeno), HttpStatus.OK);					
			
		} catch (Exception e) {
			e.printStackTrace();
			entity = 
				new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		
		}
		
		return entity;
		
	}
	
	@PutMapping(value="/{cgmixno}", 
					consumes="application/json", 
					produces = MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> modify(@PathVariable("cgmixno") int cgmixno){
		
		ResponseEntity<String> entity = null;
		
		try {
			service.upcount(cgmixno);
			entity = 
					new ResponseEntity<String>(
							"SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(
					e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	
	
	
	
	
	
	
	
	
}
	
	
	
	
	
//	@RequestMapping("/read")
//	public void load(Model model, Long cgmixno) {
//		
//		
//		log.info(service.load(cgmixno));
//		model.addAttribute("read", service.load(cgmixno));
//		
//	}
//	
//	
//	@RequestMapping("/readRun")
//	public void update(Model model, VoteVO vo, RedirectAttributes rttr) {
//		
//		
//		model.addAttribute("update", vo);
//		
//		
//<script type="text/javascript">
//$(document).ready(function(){
//		
//	 var random = (Math.random() + 1) * ${read.cgmixno};
//	
//	$('#nextVote').on("click", function(event){
//		
//		
//		
//		
//	})
//});
//
//</script>
	
	
	


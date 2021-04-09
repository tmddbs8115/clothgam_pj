package org.ict.controller;

import java.util.List;

import org.ict.domain.RankVO;
import org.ict.domain.VoteVO;
import org.ict.service.RankService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/rank/*")
public class RankRestController {

	@Autowired
	private RankService service;
	
	
	@GetMapping(value="/list", produces= { MediaType.APPLICATION_JSON_UTF8_VALUE })
	public @ResponseBody ResponseEntity<List<RankVO>> list(){
	    
		ResponseEntity<List<RankVO>> entity = null;

	      try {
	         entity = new ResponseEntity<>(service.getLikeList(), HttpStatus.OK);
	      } catch (Exception e) {
	         e.printStackTrace();
	         entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
	      }
		
	      return entity;

	}
	
	@GetMapping("/rank")
	public ResponseEntity<RankVO> rank(@PathVariable("cglikeno") int cglikeno){
		
		ResponseEntity<RankVO> entity = null;
		
		try {
			entity = new ResponseEntity<RankVO>( service.get(cglikeno), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return entity;
		
		
	}
	
	
	@GetMapping(value="/list/{cglikeno}", produces= MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<RankVO> get(@PathVariable("cglikeno") Integer cglikeno){
		
		ResponseEntity<RankVO> entity = null;
		
		try {
			entity = new ResponseEntity<RankVO>(service.get(cglikeno), HttpStatus.OK);

		} catch (Exception e) {
			e.printStackTrace();
			entity = 
				new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}

		
		return entity;
	}
	
	
	
	
}

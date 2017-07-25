package com.hzyc.sekill.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@RequestMapping("/toIndex.do")
	public String toIndex(){
		System.out.println("----------toIndextoIndex----------");
		return "/jdms/jdms";
	}
}

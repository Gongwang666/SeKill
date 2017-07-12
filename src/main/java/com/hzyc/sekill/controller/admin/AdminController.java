package com.hzyc.sekill.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@RequestMapping("/loginPage.do")
	public String loginPage(){
		return "/admin/login";
	}
	@RequestMapping("/index.do")
	public String indexPage(){
		return "/admin/index";
	}
}

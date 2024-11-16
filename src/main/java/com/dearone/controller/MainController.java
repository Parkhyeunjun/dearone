package com.dearone.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping(value = "/main.do")
	public String main() throws Exception {
		return "main/main";
	}
}

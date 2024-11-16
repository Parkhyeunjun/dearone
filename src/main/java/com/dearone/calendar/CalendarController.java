package com.dearone.calendar;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("dearone/calendar")
public class CalendarController {
	
	@GetMapping(value = "/main.do")
	public String main() throws Exception {
		return "calendar/main";
	}
	
}

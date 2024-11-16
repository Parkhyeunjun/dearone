package com.dearone.wallet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("dearone/wallet")
public class WalletController {

	@GetMapping(value = "/main.do")
	public String main() throws Exception {
		return "wallet/main";
	}
}

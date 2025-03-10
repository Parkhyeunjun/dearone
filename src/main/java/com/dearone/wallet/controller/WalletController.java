package com.dearone.wallet.controller;

import java.util.ArrayList;
import java.util.List;

import org.egovframe.rte.psl.dataaccess.util.EgovMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dearone.wallet.service.WalletService;

@Controller
@RequestMapping("/dearone/wallet")
public class WalletController {
	
	@Autowired
	private WalletService walletSvc;
	
	@GetMapping(value = "/main.do")
	public String main() throws Exception {
		return "wallet/main";
	}
	
	//phjTest
	/* @PostMapping(value = "/getTest.do") */
	@RequestMapping(value = {"/getTest.do"}, produces = "text/plain; charset=UTF-8", method = {RequestMethod.POST})
	@ResponseBody
	public String getTest() {
		List<EgovMap> resList = new ArrayList<>();
		try {
			resList = walletSvc.getTest();
			System.out.println("==== db 조회결과 : ===> {}" + resList);
		} catch (Exception e) {
			System.out.println("==== ERROR : ===> {}" + e.getMessage());
		}
		return resList.toString();
	}
	
}

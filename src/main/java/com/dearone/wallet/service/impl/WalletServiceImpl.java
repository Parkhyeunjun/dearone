package com.dearone.wallet.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.egovframe.rte.psl.dataaccess.util.EgovMap;
import org.springframework.stereotype.Service;

import com.dearone.wallet.mapper.WalletMapper;
import com.dearone.wallet.service.WalletService;

@Service
public class WalletServiceImpl implements WalletService {
	
	@Resource(name = "walletMapper")
	private WalletMapper walletMapper;
	
	@Override
	public List<EgovMap> getTest() throws Exception{
		
		return walletMapper.getTest();
	}

}

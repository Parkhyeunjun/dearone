package com.dearone.wallet.mapper;

import java.util.List;
import java.util.Map;

import org.egovframe.rte.psl.dataaccess.mapper.Mapper;
import org.egovframe.rte.psl.dataaccess.util.EgovMap;

@Mapper("walletMapper")
public interface WalletMapper {

	List<EgovMap> getTest() throws Exception;

}

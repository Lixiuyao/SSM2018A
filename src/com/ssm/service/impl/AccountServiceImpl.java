package com.ssm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.dao.AccountDao;
import com.ssm.service.IAccountService;
@Service
public class AccountServiceImpl implements IAccountService {
	@Autowired
	private AccountDao accountDao;
	@Override
	public void transfer(Integer fromAccountId, Integer toAccountId, Integer money) {
		accountDao.decreaseMoney(fromAccountId,money);
//		int i = 3/0;
		accountDao.increaseMoney(toAccountId,money);
		
	}

}

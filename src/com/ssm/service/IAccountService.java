package com.ssm.service;

public interface IAccountService {

	void transfer(Integer fromAccountId, Integer toAccountId, Integer money);

}

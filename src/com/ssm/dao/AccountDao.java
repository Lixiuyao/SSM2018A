package com.ssm.dao;

import org.apache.ibatis.annotations.Param;

public interface AccountDao {

	void decreaseMoney(@Param("accountId")Integer accountId,@Param("money")Integer money);

	void increaseMoney(@Param("accountId")Integer accountId, @Param("money")Integer money);

}

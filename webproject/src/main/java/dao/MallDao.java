package dao;

import vo.Mall;

public interface MallDao {

	public void insertMall(Mall mall);
	public Mall selectMall(String mallName);

}

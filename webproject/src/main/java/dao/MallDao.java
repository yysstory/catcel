package dao;

import java.util.List;

import vo.Mall;

public interface MallDao {

	public void insertMall(Mall mall);
	public Mall selectMall(String mallName);
	public List<String> selectMallNameList(int userNo);
	public void removeMall(String mallName,int userNo);
}

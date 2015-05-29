package dao;

import vo.OrderJson;


public interface OrderDao {

/*	public void insertMall(Mall mall);
	public Mall selectMall(String mallName);
*/
	
	public void insertOrderJson(OrderJson[] orderJson);
	
}

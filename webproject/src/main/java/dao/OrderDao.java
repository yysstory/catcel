package dao;

import vo.OrderRaw;



public interface OrderDao {

/*	public void insertMall(Mall mall);
	public Mall selectMall(String mallName);
*/
	
	public void insertOrderJson(OrderRaw[] OrderRaws);
	
}

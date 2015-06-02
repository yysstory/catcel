package dao;

import vo.OrderRaw;

public interface OrderRawDao {

	void insertOrderRaws(String name,String date, int userNo, OrderRaw[] orders);

	Integer todayOrder(String payment_date);
	Integer weekOrder(String payment_date);
	
	
	
	Integer todayStats(String payment_date);
	Integer weekStats(String payment_date);
	Integer monthStats(String payment_date);
	Integer yearStats(String payment_date);

}

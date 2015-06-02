package dao;

import vo.OrderRaw;

public interface OrderRawDao {

	void insertOrderRaws(String name,String date, int userNo, OrderRaw[] orders);

	Integer todayStats(String payment_date);
	Integer todayOrder(String payment_date);

}

package dao;

import vo.OrderRaw;

public interface OrderRawDao {

	void insertOrderRaws(String name,String date, int userNo, OrderRaw[] orders);

	int todayStats(String payment_date);

}

package dao;

import java.util.List;

import vo.BestProduct;
import vo.OrderRaw;

public interface OrderRawDao {

	void insertOrderRaws(String name,String date, int userNo, OrderRaw[] orders);

	Integer todayOrder(String payment_date);
	Integer weekOrder(String payment_date);
	
	Integer dayOrderAvg(String payment_date);
	List<BestProduct> orderBest(String payment_date);
	
	
	
	Integer todayStats(String payment_date);
	Integer weekStats(String payment_date);
	
	Integer daySellAvg(String payment_date);
	Integer weekSellAvg(String payment_date);
	Integer monthSellAvg(String payment_date);

	List<OrderRaw> customerSearch(String orcu_name);
	String customerSearchMap(String orcu_name);
}

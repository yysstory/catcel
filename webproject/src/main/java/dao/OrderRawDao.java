package dao;

import java.util.List;

import vo.BestProduct;
import vo.OrderRaw;

public interface OrderRawDao {

	void insertOrderRaws(String name,String date, int userNo, OrderRaw[] orders);

	Integer dayOrderCount(String payment_date);
	Integer weekOrderCount(String payment_date);
	Integer monthOrderCount(String payment_date);	
	Integer yearOrderCount(String payment_date);

	Integer dayMoneyTotal(String payment_date);
	Integer weekMoneyTotal(String payment_date);
	Integer monthMoneyTotal(String payment_date);
	Integer yearMoneyTotal(String payment_date);

	List<BestProduct> orderBest(String payment_date);
	List<OrderRaw> customerSearch(String orcu_name);
	List<OrderRaw> customerSearchMap(String orcu_name);
}

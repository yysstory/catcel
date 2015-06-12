package dao;

import java.util.List;

import vo.BestProduct;
import vo.LineGraph;
import vo.OrderRaw;

public interface OrderRawDao {

	void insertOrderRaws(String name,String date, int userNo, OrderRaw[] orders);

	Integer dayOrderCount(String payment_date,int userNo);
	Integer weekOrderCount(String payment_date,int userNo);
	Integer monthOrderCount(String payment_date,int userNo);	
	Integer yearOrderCount(String payment_date,int userNo);

	Integer dayMoneyTotal(String payment_date,int userNo);
	Integer weekMoneyTotal(String payment_date,int userNo);
	Integer monthMoneyTotal(String payment_date,int userNo);
	Integer yearMoneyTotal(String payment_date,int userNo);

	List<LineGraph> getDayMoneyGraph(String payment_date,int userNo);
	List<LineGraph> getWeekMoneyGraph(String payment_date,int userNo);
	List<LineGraph> getMonthMoneyGraph(String payment_date,int userNo);
	List<LineGraph> getYearMoneyGraph(int userNo);
	
	
	
	
	
	List<BestProduct> orderBest(String payment_date);
	List<OrderRaw> customerSearch(String orcu_name);
	List<OrderRaw> customerSearchMap(String orcu_name);
}

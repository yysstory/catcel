package dao;

import java.util.List;

import vo.BestProduct;
import vo.LineGraph;
import vo.OrderRaw;

public interface OrderRawDao {

	void insertOrderRaws(String name,String date, int userNo, OrderRaw[] orders);

	LineGraph getDayData(String payment_date,int userNo);
	LineGraph getWeekData(String payment_date,int userNo);
	LineGraph getMonthData(String payment_date,int userNo);
	LineGraph getYearData(String payment_date,int userNo);

	List<LineGraph> getDayMoneyGraph(String payment_date,int userNo);
	List<LineGraph> getWeekMoneyGraph(String payment_date,int userNo);
	List<LineGraph> getMonthMoneyGraph(String payment_date,int userNo);
	List<LineGraph> getYearMoneyGraph(String payment_date,int userNo);
	
	List<BestProduct> orderBest(String payment_date);
	List<OrderRaw> customerSearch(String orcu_name);
	List<OrderRaw> customerSearchMap(String searchColumn, String columnInput);
	
	List<OrderRaw> orderListLoad(String startDate, String endDate,String userEmail);

	void deleteOrderList(String orderUploadDate, String name);

	
	
}
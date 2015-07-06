package controllers;

import java.security.Principal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import util.CatCelUtil;
import vo.LineGraph;
import dao.MallDao;
import dao.OrderRawDao;
import dao.UserDao;

@Controller
public class StatsControl {

	@Autowired
	MallDao mallDao;
	@Autowired
	OrderRawDao orderRawDao;
	@Autowired
	UserDao userDao;

	@RequestMapping(value = "/orderStat", method = RequestMethod.GET)
	public String orderStatGet() {

		return "orderStat";
	}
	
	
	
	@RequestMapping(value = "/orderStat", method = RequestMethod.POST)
	public String orderStatPost() {

		return "orderStat";
	}

	
	
	
	@RequestMapping(value = "/sellStat", method = RequestMethod.GET)
	public String sellStatGet() {
		System.out.println("sellStat get 요청 호출");

		return "sellStat";
	}

	
	@RequestMapping(value = "/sellStat", method = RequestMethod.POST)
	public Object sellStatPost(Principal principal) throws ParseException {
		System.out.println("sellStat post 요청 호출");
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		int userNo= userDao.getUserNo(principal.getName());
		resultMap.put("getDayData",CatCelUtil.nullToZero(orderRawDao.getDayData(CatCelUtil.nowDay(),userNo)));
		resultMap.put("getWeekData",CatCelUtil.nullToZero(orderRawDao.getWeekData(CatCelUtil.nowWeekStart(),userNo)));
		resultMap.put("getMonthData",CatCelUtil.nullToZero(orderRawDao.getMonthData(CatCelUtil.nowMonth(),userNo)));
		resultMap.put("getYearData",CatCelUtil.nullToZero(orderRawDao.getYearData(CatCelUtil.nowYear(),userNo)));
		
		resultMap.put("dayMoneyGraphData",orderRawDao.getDayMoneyGraph(CatCelUtil.nowDay(), userNo));
		resultMap.put("monthMoneyGraphData",orderRawDao.getMonthMoneyGraph(CatCelUtil.nowMonth(), userNo));
		resultMap.put("yearMoneyGraphData",orderRawDao.getYearMoneyGraph(CatCelUtil.nowYear(),userNo));
		List<LineGraph> lineGraphs = orderRawDao.getWeekMoneyGraph(CatCelUtil.nowWeekStart(), userNo);
		
		
		for(LineGraph lineGraph : lineGraphs){
			Calendar c = Calendar.getInstance();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
			System.out.println(lineGraph.getStandardTime());
			c.setTime(sdf.parse(lineGraph.getStandardTime()));
			lineGraph.setStandardTime("0"+c.get(Calendar.DAY_OF_WEEK));
		}
		resultMap.put("weekMoneyGraphData",lineGraphs);
		return resultMap;
	}
	
	
	@RequestMapping(value = "/productStat", method = RequestMethod.GET)
	public String productStat() {

		return "productStat";
	}

	@RequestMapping(value = "/customerStat", method = RequestMethod.GET)
	public String customerStat() {

		return "customerStat";
	}

	@RequestMapping(value = "/totalStat", method = RequestMethod.GET)
	public String totalStat() {

		return "totalStat";
	}

/*	
	SELECT *,COUNT(*) AS COUNT FROM ORDER_RAW
	WHERE DATE_FORMAT(PAYMENT_DATE,'%Y/%m/%d') 
	BETWEEN DATE_FORMAT('2014/01/01','%Y/%m/%d') 
	AND DATE_FORMAT('2016/01/01','%Y/%m/%d') 
	AND USER_NO = 5
	GROUP BY PRODUCT_NAME
	ORDER BY COUNT DESC
	LIMIT 10
	
	
	SELECT *,COUNT(*) AS COUNT FROM ORDER_RAW
	WHERE DATE_FORMAT(PAYMENT_DATE,'%Y/%m/%d') 
	BETWEEN DATE_FORMAT('2014/01/01','%Y/%m/%d') 
	AND DATE_FORMAT('2016/01/01','%Y/%m/%d') 
	AND USER_NO = 5
	GROUP BY PRODUCT_OPTION
	ORDER BY COUNT DESC
	LIMIT 10
	
	SELECT *,SUM(ORDER_TOTAL_AMOUNT),COUNT(*) AS COUNT FROM ORDER_RAW
	WHERE DATE_FORMAT(PAYMENT_DATE,'%Y/%m/%d') 
	BETWEEN DATE_FORMAT('2014/01/01','%Y/%m/%d') 
	AND DATE_FORMAT('2016/01/01','%Y/%m/%d') 
	AND USER_NO = 5
	GROUP BY ORCU_NAME,ORCU_ID,ORCU_PHONENUMBER
	ORDER BY COUNT DESC
	LIMIT 10
	
	SELECT *,SUM(ORDER_TOTAL_AMOUNT) AS ORDER_TOTAL_AMOUNT ,COUNT(*) AS COUNT FROM ORDER_RAW
	WHERE DATE_FORMAT(PAYMENT_DATE,'%Y/%m/%d') 
	BETWEEN DATE_FORMAT('2014/01/01','%Y/%m/%d') 
	AND DATE_FORMAT('2016/01/01','%Y/%m/%d') 
	AND USER_NO = 5
	GROUP BY ORCU_NAME,ORCU_ID,ORCU_PHONENUMBER
	ORDER BY COUNT DESC
	LIMIT 30*/
}

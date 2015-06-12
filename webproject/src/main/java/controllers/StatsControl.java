package controllers;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import util.CatCelUtil;
import vo.OrderRaw;
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
	public Object sellStatPost(Principal principal) {
		System.out.println("sellStat post 요청 호출");
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		int userNo= userDao.getUserNo(principal.getName());
		resultMap.put("dayMoneyTotal",CatCelUtil.nullToZero(orderRawDao.dayMoneyTotal(CatCelUtil.nowDay(),userNo)));
		resultMap.put("weekMoneyTotal",CatCelUtil.nullToZero(orderRawDao.weekMoneyTotal(CatCelUtil.nowDay(),userNo)));
		resultMap.put("monthMoneyTotal",CatCelUtil.nullToZero(orderRawDao.monthMoneyTotal(CatCelUtil.nowMonth(),userNo)));
		resultMap.put("yearMoneyTotal",CatCelUtil.nullToZero(orderRawDao.yearMoneyTotal(CatCelUtil.nowYear(),userNo)));
		
		resultMap.put("dayMoneyGraphData",orderRawDao.getDayMoneyGraph("2015/04/17", userNo));
		resultMap.put("weekMoneyGraphData",orderRawDao.getWeekMoneyGraph("2015/04/17", userNo));
		resultMap.put("monthMoneyGraphData",orderRawDao.getMonthMoneyGraph("2015", userNo));
		resultMap.put("yearMoneyGraphData",orderRawDao.getYearMoneyGraph(userNo));
		
		return resultMap;
	}
}

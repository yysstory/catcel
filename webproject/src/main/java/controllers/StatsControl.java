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
		
		
		
		return resultMap;
	}

	
	
	
	@RequestMapping(value = "/customerSearch", method = RequestMethod.GET)
	public String customer() {

		return "customerSearch";
	}

	/*
	 * @RequestMapping(value="/customerSearch",method=RequestMethod.POST) public
	 * Object customerSearch(Model model, String orcu_name){
	 * System.out.println(orcu_name); List<OrderRaw> customerSearchList =
	 * orderRawDao.customerSearch(orcu_name);
	 * 
	 * for(OrderRaw cs : customerSearchList){ System.out.println(cs.toString());
	 * } return "customerSearch"; }
	 */
	@RequestMapping(value = "/customerSearch2", method = RequestMethod.POST)
	public Object customerSearch2(String orcu_name) {
		System.out.println(orcu_name);
		HashMap<String, List<OrderRaw>> resultMap = new HashMap<String, List<OrderRaw>>();
		List<OrderRaw> customerSearchMap = orderRawDao
				.customerSearchMap(orcu_name);
		resultMap.put("customerSearch2", customerSearchMap);
		System.out.println(customerSearchMap);
		return resultMap;
	}
}

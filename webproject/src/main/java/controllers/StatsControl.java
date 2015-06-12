package controllers;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import util.CatCelUtil;
import vo.BestProduct;
import vo.OrderRaw;
import dao.MallDao;
import dao.OrderRawDao;

@Controller
public class StatsControl {

	@Autowired
	MallDao mallDao;
	@Autowired
	OrderRawDao orderRawDao;

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
	public Object sellStatPost() {
		System.out.println("sellStat post 요청 호출");
		HashMap<String, Integer> resultMap = new HashMap<String, Integer>();
		//resultMap.put("dayMoneyTotal", orderRawDao.dayMoneyTotal(CatCelUtil.nowDay()));
		resultMap.put("dayMoneyTotal", orderRawDao.dayMoneyTotal("2015/04/17"));
		System.out.println(orderRawDao.dayMoneyTotal("2015/04/17"));
		
		return resultMap;
	}
}

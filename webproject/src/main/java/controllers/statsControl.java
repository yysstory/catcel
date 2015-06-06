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
public class statsControl {

	@Autowired
	MallDao mallDao;
	@Autowired
	OrderRawDao orderRawDao;
	
	
	@RequestMapping(value="/orderStat",method=RequestMethod.GET)
	public String orderStat(Model model){
		
		Integer todayOrder = orderRawDao.todayOrder(CatCelUtil.nowDay());
		if(todayOrder==null){
			todayOrder=0;
		}
		model.addAttribute("todayOrder", todayOrder);
		
		Integer weekOrder = orderRawDao.weekOrder(CatCelUtil.nowDay2());
		if(weekOrder==null){
			weekOrder=0;
		}
		model.addAttribute("weekOrder", weekOrder);
		
		Integer monthOrder = orderRawDao.todayOrder(CatCelUtil.nowMonth());
		if(monthOrder==null){
			monthOrder=0;
		}
		model.addAttribute("monthOrder", monthOrder);
		
		Integer yearOrder = orderRawDao.todayOrder(CatCelUtil.nowYear());
		if(yearOrder==null){
			yearOrder=0;
		}
		model.addAttribute("yearOrder", yearOrder);
		
		List<BestProduct> bestProductList = orderRawDao.orderBest(CatCelUtil.nowMonth());
		for(BestProduct bp : bestProductList){
			System.out.println(bp.toString());
		}
		model.addAttribute("orderBestList", bestProductList);
		
		
		return "orderStat";
	}
	
	@RequestMapping(value="/sellStat",method=RequestMethod.GET)
	public String sellStat(Model mo){
		Integer todayTotal = orderRawDao.todayStats(CatCelUtil.nowDay());
		if(todayTotal==null){
			todayTotal=0;
		}
		mo.addAttribute("todayTotal", todayTotal);
		
		Integer weekTotal = orderRawDao.weekStats(CatCelUtil.nowDay2());
		if(weekTotal==null){
			weekTotal=0;
		}
		mo.addAttribute("weekTotal", weekTotal);
		
		Integer monthTotal = orderRawDao.todayStats(CatCelUtil.nowMonth());
		if(monthTotal==null){
			monthTotal=0;
		}
		mo.addAttribute("monthTotal", monthTotal);
		
		Integer yearTotal = orderRawDao.todayStats(CatCelUtil.nowYear());
		if(yearTotal==null){
			yearTotal=0;
		}
		mo.addAttribute("yearTotal", yearTotal);
		
		return "sellStat";
	}
	
	@RequestMapping(value="/sellStat",method=RequestMethod.POST)
	public Object sellStat(){
		System.out.println("sellStat post 요청 호출");
		
		HashMap<String, Integer> resultMap = new HashMap<String, Integer>();
		Integer todayTotal = orderRawDao.todayStats(CatCelUtil.nowDay());
		resultMap.put("todayTotal", todayTotal);
		
		Integer dayAvg = orderRawDao.daySellAvg(CatCelUtil.nowMonth());
		resultMap.put("daySellAvg", dayAvg);
		
		Integer weekAvg = orderRawDao.weekSellAvg(CatCelUtil.nowMonth());
		resultMap.put("weekSellAvg", weekAvg);
		
		Integer monthAvg = orderRawDao.monthSellAvg(CatCelUtil.nowYear());
		resultMap.put("monthSellAvg", monthAvg);
		
		return resultMap;
	}
	
	@RequestMapping(value="/customerSearch",method=RequestMethod.GET)
	public String customer(){
		
		return "customerSearch";
	}
	/*@RequestMapping(value="/customerSearch",method=RequestMethod.POST)
	public Object customerSearch(Model model, String orcu_name){
		System.out.println(orcu_name);
		List<OrderRaw> customerSearchList = orderRawDao.customerSearch(orcu_name);
		
		for(OrderRaw cs : customerSearchList){
			System.out.println(cs.toString());
		}
		return "customerSearch";
	}*/
	@RequestMapping(value="/customerSearch2",method=RequestMethod.POST)
	public Object customerSearch2(String orcu_name){
		System.out.println(orcu_name);
		HashMap<String, List<OrderRaw>> resultMap = new HashMap<String, List<OrderRaw>>();
		List<OrderRaw> customerSearchMap = orderRawDao.customerSearchMap(orcu_name);
		resultMap.put("customerSearch2", customerSearchMap);
		System.out.println(customerSearchMap);
		return resultMap;
	}
}

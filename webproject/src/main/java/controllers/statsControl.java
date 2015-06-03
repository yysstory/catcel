package controllers;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import util.CatCelUtil;
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
		System.out.println("orderStat 진입");
		
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
		Integer dayAvg = orderRawDao.todayStats(CatCelUtil.nowYear());;
		resultMap.put("dayAvg", dayAvg);
		
		return resultMap;
		
	}
}

package controllers;

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
	/*
	@RequestMapping("/index")
	public String goMain(){
		return "index";
	}
	
	
	
	@RequestMapping(value="/adddata",method=RequestMethod.GET)
	public String goAddDataPage(HttpServletRequest request,Model model){
		String mallName = request.getParameter("mall");
		model.addAttribute("mall", mallDao.selectMall(mallName));
		
		System.out.println(mallName);
		Mall mall = mallDao.selectMall(mallName);
		String arrCal [] = new String[]{"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K",
				"L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W",
				"X", "Y", "Z", "AA", "AB", "AC", "AD", "AE", "AF"}; 
		
			System.out.println(mall.getMallName());

	
	}
	
	@RequestMapping(value="/adddata",method=RequestMethod.POST)
	public String goAddData(){
		return "adddata";
	}
	
	
	@RequestMapping(value="/addshop",method=RequestMethod.GET)
	public String goAddShop(){
		return "addshop";
	}
	
	@RequestMapping(value="/addshop",method=RequestMethod.POST)
	public String addShop(Mall mall){
		mall.setMallRegistDate("20150101");
		System.out.println(mall.toString());
		mallDao.insertMall(mall);
		
		return "index";
	}
	*/
	
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
		System.out.println(weekOrder);
		System.out.println(CatCelUtil.nowDay2());
		
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
	public void sellStat(){
		System.out.println("sellStat post 요청 호출");
	}
}

package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	public String orderStat(){
		System.out.println("sellStat Post 진입");

		return "orderStat";
	}
	
	@RequestMapping(value="/sellStat",method=RequestMethod.GET)
	public String sellStat(Model mo){
		System.out.println("sellStat Get 진입");
		int todayTotal = orderRawDao.todayStats("2015/05/21");
		mo.addAttribute("todayTotal", todayTotal);	
		mo.addAttribute("name", "123123123");
		
		return "sellStat";
	}
	
}

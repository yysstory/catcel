package controllers;

import org.springframework.stereotype.Controller;


@Controller
public class statsControl {

	/*@Autowired
	MallDao mallDao;
	
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
	
}

package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import vo.Mall;
import dao.MallDao;


@Controller
public class IndexController {

	@Autowired
	MallDao mallDao;
	
	@RequestMapping("/index")
	public String goMain(){
		return "index";
	}
	
	@RequestMapping(value="/addshop",method=RequestMethod.GET)
	public String goAddShop(){
		return "addshop";
	}
	
	@RequestMapping(value="/addshop",method=RequestMethod.POST)
	public String addShop(Mall mall){
		System.out.println(mall.toString());
		mallDao.insertMall(mall);
		
		return "index";
	}
	
	
}

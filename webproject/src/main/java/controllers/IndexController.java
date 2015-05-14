package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class IndexController {

	@RequestMapping("/index.htm")
	public String goMain(){
		return "index";
	}
	
	@RequestMapping("/addshop.htm")
	public String goAddShop(){
		return "addshop";
	}
}

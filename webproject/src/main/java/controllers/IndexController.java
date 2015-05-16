package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class IndexController {

	@RequestMapping("/index")
	public String goMain(){
		return "index";
	}
	
	@RequestMapping("/addshop")
	public String goAddShop(){
		return "addshop";
	}
}

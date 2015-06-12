package controllers;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import vo.OrderRaw;
import dao.OrderRawDao;

@Controller
public class SearchControl {
	
	@Autowired
	OrderRawDao orderRawDao;
	
	@RequestMapping(value = "/customerSearch", method = RequestMethod.GET)
	public String customer(){
		
		return "customerSearch";
	}
	
	@RequestMapping(value = "/customerSearch", method = RequestMethod.POST)
	public Object customerSearch(String searchColumn, String columnInput) {
		System.out.println(searchColumn);
		System.out.println(columnInput);
		HashMap<String, List<OrderRaw>> resultMap = new HashMap<String, List<OrderRaw>>();
		List<OrderRaw> customerSearchMap = orderRawDao
				.customerSearchMap(searchColumn, columnInput);
		resultMap.put("customerSearch", customerSearchMap);
		System.out.println(customerSearchMap);
		return resultMap;
	}

}

package controllers;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	
	
	@RequestMapping(value="/adddata",method=RequestMethod.GET)
	public String goAddDataPage(HttpServletRequest request,Model model){
		String mallName = request.getParameter("mall");
		/*model.addAttribute("mall", mallDao.selectMall(mallName));
		*/
		Mall mall = mallDao.selectMall(mallName);
		String arrCal [] = new String[]{"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K",
				"L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W",
				"X", "Y", "Z", "AA", "AB", "AC", "AD", "AE", "AF"}; 
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("몰번호",Integer.toString(mall.getMallNo()));
		map.put("몰이름",mall.getMallName());
		map.put("수수료",Integer.toString(mall.getMallCommitssionCal()));
		map.put("데이터 시작행",Integer.toString(mall.getDataStartCal()));
		map.put("등록일",mall.getMallRegistDate());
		map.put("구매자명",mall.getOrcuNameCal());
		map.put("구매자ID",mall.getOrcuIdCal());
		map.put("구매자 연락처",mall.getOrcuPhoneNumberCal());
		map.put("쇼핑몰 주문번호",mall.getOrderNumberCal());
		map.put("쇼핑몰 주문코드",mall.getOrderCodeCal());
		map.put("결제일",mall.getPaymentDateCal());
		map.put("결제수단",mall.getPaymentMethodCal());
		map.put("배송수단",mall.getDeliveryMethodCal());
		map.put("배송비",mall.getShoppingChargeCal());
		map.put("배송메세지",mall.getDeliveryMessageCal());
		map.put("발송일",mall.getShippingDateCal());
		map.put("구매일",mall.getBuyDateCal());
		map.put("상품넘버",mall.getProductNumberCal());
		map.put("상품명",mall.getProductNameCal());
		map.put("옵션",mall.getProductOptionCal());
		map.put("추가구성",mall.getProductAddCal());
		map.put("상품가격",mall.getProductPriceCal());
		map.put("수량",mall.getProductQtyCal());
		map.put("수취인명",mall.getRecuNameCal());
		map.put("수취인핸드폰",mall.getRecuPhoneNumberCal());
		map.put("수취인집전화",mall.getRecuHomeNumberCal());
		map.put("우편번호",mall.getRecuZipCodeCal());
		map.put("주소",mall.getRecuAddressCal());
		map.put("회원번호",Integer.toString(mall.getUserNo()));

		
		
		return "adddata";
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
	
	
}

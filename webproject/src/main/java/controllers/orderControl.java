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
public class orderControl {

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
		System.out.println(mallName);
		Mall mall = mallDao.selectMall(mallName);
		String arrCal [] = new String[]{"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K",
				"L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W",
				"X", "Y", "Z", "AA", "AB", "AC", "AD", "AE", "AF"}; 
		
		
		
		HashMap<String, String> mallMap = new HashMap<String, String>();
		mallMap.put("몰번호",Integer.toString(mall.getMallNo()));
		mallMap.put("몰이름",mall.getMallName());
		mallMap.put("수수료",Integer.toString(mall.getMallCommitssionCal()));
		mallMap.put("데이터 시작행",Integer.toString(mall.getDataStartCal()));
		mallMap.put("등록일",mall.getMallRegistDate());
		mallMap.put("구매자명",mall.getOrcuNameCal());
		mallMap.put("구매자ID",mall.getOrcuIdCal());
		mallMap.put("구매자 연락처",mall.getOrcuPhoneNumberCal());
		mallMap.put("쇼핑몰 주문번호",mall.getOrderNumberCal());
		mallMap.put("쇼핑몰 주문코드",mall.getOrderCodeCal());
		mallMap.put("결제일",mall.getPaymentDateCal());
		mallMap.put("결제수단",mall.getPaymentMethodCal());
		mallMap.put("배송수단",mall.getDeliveryMethodCal());
		mallMap.put("배송비",mall.getShoppingChargeCal());
		mallMap.put("배송메세지",mall.getDeliveryMessageCal());
		mallMap.put("발송일",mall.getShippingDateCal());
		mallMap.put("구매일",mall.getBuyDateCal());
		mallMap.put("상품넘버",mall.getProductNumberCal());
		mallMap.put("상품명",mall.getProductNameCal());
		mallMap.put("옵션",mall.getProductOptionCal());
		mallMap.put("추가구성",mall.getProductAddCal());
		mallMap.put("상품가격",mall.getProductPriceCal());
		mallMap.put("수량",mall.getProductQtyCal());
		mallMap.put("수취인명",mall.getRecuNameCal());
		mallMap.put("수취인핸드폰",mall.getRecuPhoneNumberCal());
		mallMap.put("수취인집전화",mall.getRecuHomeNumberCal());
		mallMap.put("우편번호",mall.getRecuZipCodeCal());
		mallMap.put("주소",mall.getRecuAddressCal());
		mallMap.put("회원번호",Integer.toString(mall.getUserNo()));

		
		System.out.println(mall.toString());
		model.addAttribute("mallMap", mallMap);
		model.addAttribute("arrCal", arrCal);
		
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

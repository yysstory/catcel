package controllers;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import util.CatCelUtil;
import vo.Mall;
import vo.OrderRaw;
import dao.MallDao;

@Controller
public class OrderControl {

	@Autowired
	MallDao mallDao;

	@RequestMapping("/index")
	public String goMain() {
		return "index";
	}

	@RequestMapping(value = "/adddata", method = RequestMethod.GET)
	public String goAddDataPage(HttpServletRequest request, Model model) {
		String mallName = request.getParameter("mall");
		/*
		 * model.addAttribute("mall", mallDao.selectMall(mallName));
		 */
		System.out.println(mallName);
		Mall mall = mallDao.selectMall(mallName);
		String arrCal[] = new String[] { "A", "B", "C", "D", "E", "F", "G",
				"H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S",
				"T", "U", "V", "W", "X", "Y", "Z", "AA", "AB", "AC", "AD",
				"AE", "AF" };

		HashMap<String, String> mallMap = new HashMap<String, String>();

		if (mall != null) {

			mallMap.put("몰번호", Integer.toString(mall.getMallNo()));
			mallMap.put("몰이름", mall.getMallName());
			mallMap.put("수수료", Integer.toString(mall.getMallCommitssionCal()));
			mallMap.put("데이터 시작행", Integer.toString(mall.getDataStartCal()));
			mallMap.put("회원번호", Integer.toString(mall.getUserNo()));

			/*
			 * mallMap.put(mall.getMallRegistDate(), "등록일");
			 * mallMap.put(mall.getMallRegistDate().toLowerCase(),
			 * "mallRegistDate");
			 */
			mallMap.put(mall.getOrcuNameCal(), "구매자명");
			mallMap.put(mall.getOrcuNameCal().toLowerCase(), "orcuName");
			mallMap.put(mall.getOrcuIdCal(), "구매자ID");
			mallMap.put(mall.getOrcuIdCal().toLowerCase(), "orcuId");
			mallMap.put(mall.getOrcuPhoneNumberCal(), "구매자 연락처");
			mallMap.put(mall.getOrcuPhoneNumberCal().toLowerCase(),
					"orcuPhoneNumber");
			mallMap.put(mall.getOrderNumberCal(), "쇼핑몰 주문번호");
			mallMap.put(mall.getOrderNumberCal().toLowerCase(), "orderNumber");
			mallMap.put(mall.getOrderCodeCal(), "쇼핑몰 주문코드");
			mallMap.put(mall.getOrderCodeCal().toLowerCase(), "orderCode");
			mallMap.put(mall.getPaymentDateCal(), "결제일");
			mallMap.put(mall.getPaymentDateCal().toLowerCase(), "paymentDate");
			mallMap.put(mall.getPaymentMethodCal(), "결제수단");
			mallMap.put(mall.getPaymentMethodCal().toLowerCase(),
					"paymentMethod");
			mallMap.put(mall.getDeliveryMethodCal(), "배송수단");
			mallMap.put(mall.getDeliveryMethodCal().toLowerCase(),
					"deliveryMethod");
			mallMap.put(mall.getShoppingChargeCal(), "배송비");
			mallMap.put(mall.getShoppingChargeCal().toLowerCase(),
					"shoppingCharge");
			mallMap.put(mall.getDeliveryMessageCal(), "배송메세지");
			mallMap.put(mall.getDeliveryMessageCal().toLowerCase(),
					"deliveryMessage");
			mallMap.put(mall.getShippingDateCal(), "발송일");
			mallMap.put(mall.getShippingDateCal().toLowerCase(), "shippingDate");
			mallMap.put(mall.getBuyDateCal(), "구매일");
			mallMap.put(mall.getBuyDateCal().toLowerCase(), "buyDate");
			mallMap.put(mall.getProductNumberCal(), "상품넘버");
			mallMap.put(mall.getProductNumberCal().toLowerCase(),
					"productNumber");
			mallMap.put(mall.getProductNameCal(), "상품명");
			mallMap.put(mall.getProductNameCal().toLowerCase(), "productName");
			mallMap.put(mall.getProductOptionCal(), "옵션");
			mallMap.put(mall.getProductOptionCal().toLowerCase(),
					"productOption");
			mallMap.put(mall.getProductAddCal(), "추가구성");
			mallMap.put(mall.getProductAddCal().toLowerCase(), "productAdd");
			mallMap.put(mall.getProductPriceCal(), "상품가격");
			mallMap.put(mall.getProductPriceCal().toLowerCase(), "productPrice");
			mallMap.put(mall.getProductQtyCal(), "수량");
			mallMap.put(mall.getProductQtyCal().toLowerCase(), "productQty");
			mallMap.put(mall.getRecuNameCal(), "수취인명");
			mallMap.put(mall.getRecuNameCal().toLowerCase(), "recuName");
			mallMap.put(mall.getRecuPhoneNumberCal(), "수취인핸드폰");
			mallMap.put(mall.getRecuPhoneNumberCal().toLowerCase(),
					"recuPhoneNumber");
			mallMap.put(mall.getRecuHomeNumberCal(), "수취인집전화");
			mallMap.put(mall.getRecuHomeNumberCal().toLowerCase(),
					"recuHomeNumber");
			mallMap.put(mall.getRecuZipCodeCal(), "우편번호");
			mallMap.put(mall.getRecuZipCodeCal().toLowerCase(), "recuZipCode");
			mallMap.put(mall.getRecuAddressCal(), "주소");
			mallMap.put(mall.getRecuAddressCal().toLowerCase(), "recuAddress");
			mallMap.put(mall.getOrderTotalAmountCal(), "주문총액");
			mallMap.put(mall.getOrderTotalAmountCal().toLowerCase(),
					"orderTotalAmount");

			System.out.println(mall.toString());
			model.addAttribute("mallMap", mallMap);
			model.addAttribute("arrCal", arrCal);
		}

		return "adddata";
	}

/*	@RequestMapping(value = "/adddata", method = RequestMethod.POST)
	public Object goAddData(String name)  {
	
		System.out.println(name);
		int age = 23;
		Mall mall = mallDao.selectMall("스토어팜");
		
		String strAge = Integer.toString(age);
		HashMap<String, String> resultMap = new HashMap<>();
		resultMap.put("success", "ok");
		resultMap.put("age", strAge);
		
		return resultMap;
	}
	*/
	
	@RequestMapping(value = "/adddata", method = RequestMethod.POST)
	public Object goAddData(@RequestBody OrderRaw[] orderRaws)  {
	for (OrderRaw orderRaw : orderRaws){
			System.out.println(orderRaw.toString());
		}
		HashMap<String, String> resultMap = new HashMap<>();
		resultMap.put("success", "ok");
		return resultMap;
	}

	
	@RequestMapping(value = "/addshop", method = RequestMethod.GET)
	public String goAddShop() {
		return "addshop";
	}

	@RequestMapping(value = "/addshop", method = RequestMethod.POST)
	public String addShop(Mall mall) {
		mall.setMallRegistDate("20150101");
		System.out.println(mall.toString());
		mallDao.insertMall(mall);

		return "index";
	}

}

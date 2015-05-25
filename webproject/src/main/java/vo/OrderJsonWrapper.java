package vo;

import java.io.Serializable;
import java.util.List;

public class OrderJsonWrapper  implements Serializable{

	
	private static final long serialVersionUID = 1L;
	

	private List<OrderJson> orderJson;


	public List<OrderJson> getOrderJson() {
		return orderJson;
	}


	public void setOrderJson(List<OrderJson> orderJson) {
		this.orderJson = orderJson;
	}


	@Override
	public String toString() {
		return "OrderJsonWrapper [orderJson=" + orderJson + "]";
	}



	
	
	

}

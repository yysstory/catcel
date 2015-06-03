package vo;

public class BestProduct {

	private String productName;
	private String userNo;
	private Integer rnum;
	
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	public Integer getRnum() {
		return rnum;
	}
	public void setRnum(Integer rnum) {
		this.rnum = rnum;
	}
	@Override
	public String toString() {
		return "BestProduct [productName=" + productName + ", userNo=" + userNo
				+ ", rnum=" + rnum + "]";
	}
	
	
}

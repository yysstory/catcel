package vo;

import java.io.Serializable;

public class LineGraph implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String standardTime;
	private Integer orderCnt = 0;
	private Integer sumMoney = 0;
	
	
	public String getStandardTime() {
		return standardTime;
	}
	public void setStandardTime(String standardTime) {
		this.standardTime = standardTime;
	}
	public Integer getOrderCnt() {
		return orderCnt;
	}
	public void setOrderCnt(Integer orderCnt) {
		this.orderCnt = orderCnt;
	}
	public Integer getSumMoney() {
		return sumMoney;
	}
	public void setSumMoney(Integer sumMoney) {
		this.sumMoney = sumMoney;
	}
	
	@Override
	public String toString() {
		return "LineGraph [standardTime=" + standardTime + ", orderCnt="
				+ orderCnt + ", sumMoney=" + sumMoney + "]";
	}
	
	
}

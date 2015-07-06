package vo;

import java.io.Serializable;

public class OrderRaw implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int orderNo;
	private String mallName;
	private String orderUploadDate;

	private String orcuName;
	private String orcuId;
	private String orcuPhoneNumber;
	private String orcuMemo;

	private String orderNumber;
	private String paymentDate;
	private String paymentMethod;
	private String deliveryMethod;
	private String shoppingCharge;
	private String deliveryMessage;
	private String shippingDate;
	private String buyDate;
	private String uploadDate;
	private String orderTotalAmount;

	private String recuName;
	private String recuPhoneNumber;
	private String recuHomeNumber;
	private String recuZipCode;
	private String recuAddress;

	private String productNumber;
	private String productName;
	private String productOption;
	private String productAdd;
	private String productPrice;
	private String productQty;
	private String userNo;
	
	
	
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public String getMallName() {
		return mallName;
	}
	public void setMallName(String mallName) {
		this.mallName = mallName;
	}

	public String getOrderUploadDate() {
		return orderUploadDate;
	}
	public void setOrderUploadDate(String orderUploadDate) {
		this.orderUploadDate = orderUploadDate;
	}
	public String getOrcuName() {
		return orcuName;
	}
	public void setOrcuName(String orcuName) {
		this.orcuName = orcuName;
	}
	public String getOrcuId() {
		return orcuId;
	}
	public void setOrcuId(String orcuId) {
		this.orcuId = orcuId;
	}
	public String getOrcuPhoneNumber() {
		return orcuPhoneNumber;
	}
	public void setOrcuPhoneNumber(String orcuPhoneNumber) {
		this.orcuPhoneNumber = orcuPhoneNumber;
	}
	public String getOrcuMemo() {
		return orcuMemo;
	}
	public void setOrcuMemo(String orcuMemo) {
		this.orcuMemo = orcuMemo;
	}
	public String getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}
	public String getPaymentDate() {
		return paymentDate;
	}
	public void setPaymentDate(String paymentDate) {
		this.paymentDate = paymentDate;
	}
	public String getPaymentMethod() {
		return paymentMethod;
	}
	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}
	public String getDeliveryMethod() {
		return deliveryMethod;
	}
	public void setDeliveryMethod(String deliveryMethod) {
		this.deliveryMethod = deliveryMethod;
	}
	public String getShoppingCharge() {
		return shoppingCharge;
	}
	public void setShoppingCharge(String shoppingCharge) {
		this.shoppingCharge = shoppingCharge;
	}
	public String getDeliveryMessage() {
		return deliveryMessage;
	}
	public void setDeliveryMessage(String deliveryMessage) {
		this.deliveryMessage = deliveryMessage;
	}
	public String getShippingDate() {
		return shippingDate;
	}
	public void setShippingDate(String shippingDate) {
		this.shippingDate = shippingDate;
	}
	public String getBuyDate() {
		return buyDate;
	}
	public void setBuyDate(String buyDate) {
		this.buyDate = buyDate;
	}
	public String getUploadDate() {
		return uploadDate;
	}
	public void setUploadDate(String uploadDate) {
		this.uploadDate = uploadDate;
	}
	public String getOrderTotalAmount() {
		return orderTotalAmount;
	}
	public void setOrderTotalAmount(String orderTotalAmount) {
		this.orderTotalAmount = orderTotalAmount;
	}
	public String getRecuName() {
		return recuName;
	}
	public void setRecuName(String recuName) {
		this.recuName = recuName;
	}
	public String getRecuPhoneNumber() {
		return recuPhoneNumber;
	}
	public void setRecuPhoneNumber(String recuPhoneNumber) {
		this.recuPhoneNumber = recuPhoneNumber;
	}
	public String getRecuHomeNumber() {
		return recuHomeNumber;
	}
	public void setRecuHomeNumber(String recuHomeNumber) {
		this.recuHomeNumber = recuHomeNumber;
	}
	public String getRecuZipCode() {
		return recuZipCode;
	}
	public void setRecuZipCode(String recuZipCode) {
		this.recuZipCode = recuZipCode;
	}
	public String getRecuAddress() {
		return recuAddress;
	}
	public void setRecuAddress(String recuAddress) {
		this.recuAddress = recuAddress;
	}
	public String getProductNumber() {
		return productNumber;
	}
	public void setProductNumber(String productNumber) {
		this.productNumber = productNumber;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductOption() {
		return productOption;
	}
	public void setProductOption(String productOption) {
		this.productOption = productOption;
	}
	public String getProductAdd() {
		return productAdd;
	}
	public void setProductAdd(String productAdd) {
		this.productAdd = productAdd;
	}
	public String getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductQty() {
		return productQty;
	}
	public void setProductQty(String productQty) {
		this.productQty = productQty;
	}
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	@Override
	public String toString() {
		return "OrderRaw [mallName=" + mallName + ", orderUploadDate="
				+ orderUploadDate + ", orcuName=" + orcuName + ", orcuId="
				+ orcuId + ", orcuPhoneNumber=" + orcuPhoneNumber
				+ ", orcuMemo=" + orcuMemo + ", orderNumber=" + orderNumber
				+ ", paymentDate=" + paymentDate + ", paymentMethod="
				+ paymentMethod + ", deliveryMethod=" + deliveryMethod
				+ ", shoppingCharge=" + shoppingCharge + ", deliveryMessage="
				+ deliveryMessage + ", shippingDate=" + shippingDate
				+ ", buyDate=" + buyDate + ", uploadDate=" + uploadDate
				+ ", orderTotalAmount=" + orderTotalAmount + ", recuName="
				+ recuName + ", recuPhoneNumber=" + recuPhoneNumber
				+ ", recuHomeNumber=" + recuHomeNumber + ", recuZipCode="
				+ recuZipCode + ", recuAddress=" + recuAddress
				+ ", productNumber=" + productNumber + ", productName="
				+ productName + ", productOption=" + productOption
				+ ", productAdd=" + productAdd + ", productPrice="
				+ productPrice + ", productQty=" + productQty + ", userNo="
				+ userNo + "]";
	}
	
	
	
	




}
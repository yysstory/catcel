package vo;

import java.io.Serializable;

public class User implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private 	int userNo;
	private 	String userEmail;
	private 	String userName;
	private 	String userPassword;
	private 	String userPhonenumber;
	private 	String userHomenumber;
	private 	String userAddress;
	private 	String userProfilePhoto;
	private 	String userRegistation;
	private 	String userRating;
	private 	String userPoint;
	private 	int userEnabled;
	private 	String userRegistchar;
	
	
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserPhonenumber() {
		return userPhonenumber;
	}
	public void setUserPhonenumber(String userPhonenumber) {
		this.userPhonenumber = userPhonenumber;
	}
	public String getUserHomenumber() {
		return userHomenumber;
	}
	public void setUserHomenumber(String userHomenumber) {
		this.userHomenumber = userHomenumber;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getUserProfilePhoto() {
		return userProfilePhoto;
	}
	public void setUserProfilePhoto(String userProfilePhoto) {
		this.userProfilePhoto = userProfilePhoto;
	}
	public String getUserRegistation() {
		return userRegistation;
	}
	public void setUserRegistation(String userRegistation) {
		this.userRegistation = userRegistation;
	}
	public String getUserRating() {
		return userRating;
	}
	public void setUserRating(String userRating) {
		this.userRating = userRating;
	}
	public String getUserPoint() {
		return userPoint;
	}
	public void setUserPoint(String userPoint) {
		this.userPoint = userPoint;
	}
	public int getUserEnabled() {
		return userEnabled;
	}
	public void setUserEnabled(int userEnabled) {
		this.userEnabled = userEnabled;
	}
	public String getUserRegistchar() {
		return userRegistchar;
	}
	public void setUserRegistchar(String userRegistchar) {
		this.userRegistchar = userRegistchar;
	}
	@Override
	public String toString() {
		return "User [userNo=" + userNo + ", userEmail=" + userEmail
				+ ", userName=" + userName + ", userPassword=" + userPassword
				+ ", userPhonenumber=" + userPhonenumber + ", userHomenumber="
				+ userHomenumber + ", userAddress=" + userAddress
				+ ", userProfilePhoto=" + userProfilePhoto
				+ ", userRegistation=" + userRegistation + ", userRating="
				+ userRating + ", userPoint=" + userPoint + ", userEnabled="
				+ userEnabled + ", userRegistchar=" + userRegistchar + "]";
	}
	
	

}

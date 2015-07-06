package vo;

import java.io.Serializable;

public class Board implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private int boardNo;
	private String content;
	private String imageUrl;
	private String registDate;
	private String updateDate;
	private String youtubeUrl;
	private int parent;
	private int userNo;
	private String userEmail;
	private String userName;
	private String userProfilePhoto;

	
	public int getParent() {
		return parent;
	}


	public void setParent(int parent) {
		this.parent = parent;
	}



	
	
	@Override
	public String toString() {
		return "Board [boardNo=" + boardNo + ", content=" + content
				+ ", imageUrl=" + imageUrl + ", registDate=" + registDate
				+ ", updateDate=" + updateDate + ", youtubeUrl=" + youtubeUrl
				+ ", parent=" + parent + ", userNo=" + userNo + ", userEmail="
				+ userEmail + ", userName=" + userName + ", userProfilePhoto="
				+ userProfilePhoto + "]";
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
	public String getUserProfilePhoto() {
		return userProfilePhoto;
	}
	public void setUserProfilePhoto(String userProfilePhoto) {
		this.userProfilePhoto = userProfilePhoto;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public String getRegistDate() {
		return registDate;
	}
	public void setRegistDate(String registDate) {
		this.registDate = registDate;
	}
	public String getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}
	public String getYoutubeUrl() {
		return youtubeUrl;
	}
	public void setYoutubeUrl(String youtubeUrl) {
		this.youtubeUrl = youtubeUrl;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	
	

}

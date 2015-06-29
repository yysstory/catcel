package vo;

import java.io.Serializable;
import java.util.List;

public class Board implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private int boardNo;
	private String content;
	private String imageUrl;
	private String registDate;
	private String updateDate;
	private String youtubeUrl;
	private int userNo;
	
	private User user;
	
	private List<Reply> replyList;
	
	
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	public List<Reply> getReplyList() {
		return replyList;
	}
	public void setReplyList(List<Reply> replyList) {
		this.replyList = replyList;
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
	@Override
	public String toString() {
		return "Board [boardNo=" + boardNo + ", content=" + content
				+ ", imageUrl=" + imageUrl + ", registDate=" + registDate
				+ ", updateDate=" + updateDate + ", youtubeUrl=" + youtubeUrl
				+ ", userNo=" + userNo + ", replyList=" + replyList + "]";
	}
	
	
	

}

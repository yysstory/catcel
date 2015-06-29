package vo;

import java.io.Serializable;
import java.util.List;

public class Reply implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	
	private int replyNo;
	private String content;
	private String registDate;
	private String updateDate;
	private int boardNo;
	private int userNo;
	
	private User user;
	
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getReplyNo() {
		return replyNo;
	}
	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	
	
	@Override
	public String toString() {
		return "Reply [replyNo=" + replyNo + ", content=" + content
				+ ", registDate=" + registDate + ", updateDate=" + updateDate
				+ ", boardNo=" + boardNo + ", userNo=" + userNo + "]";
	}

	
	
	
}

package dao;

import java.util.List;

import vo.Board;
import vo.Mall;
import vo.Reply;

public interface TimeLineDao {

	public void insertBoard(Board board);
	public void addParent(String userEmail);
	
	public void updateBoard(String content,int boardNo);

	public void deleteBoard(int parent);
	public void deleteReply(int boardNo);
	
	public List<Board> selectBoardOne(int parentNo);
	public List<Board> selectBoardList(int startboardNo);

}

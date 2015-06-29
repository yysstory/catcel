package dao;

import java.util.List;

import vo.Board;
import vo.Mall;
import vo.Reply;

public interface TimeLineDao {

	public void insertBoard(Board board);
	public void insertReply(Reply reply);
	
	
	public void updateBoard(Mall mall);
	public void	updateReply(String mallName);
	public void deleteBoard(Mall mall);
	public void	deleteReply(String mallName);
	
	public List<Board> selectBoardList(int startboardNo);
	public List<Reply> selectReplyList(int boardNo);
}

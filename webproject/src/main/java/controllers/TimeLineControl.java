package controllers;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import util.CatCelUtil;
import vo.Board;
import vo.Reply;
import vo.User;
import dao.TimeLineDao;
import dao.UserDao;

@Controller
public class TimeLineControl {
	
	@Autowired
	TimeLineDao timeLineDao;
	
	@Autowired
	UserDao userDao;
	
	
	
	@RequestMapping(value = "/timeLine", method = RequestMethod.GET)
	public String timeLineGet(){
		return "timeLine";
	}
	
	@RequestMapping(value = "/timeLine", method = RequestMethod.POST)
	public Object timeLinePost(int startPage,Principal principal) {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();		
		List<Board> boardList = timeLineDao.selectBoardList(startPage);
		for (Board board : boardList){
			User user = userDao.getUserSimpleInfo(board.getUserNo());
			board.setUser(user);
			List<Reply> replyList = timeLineDao.selectReplyList(board.getBoardNo());
			for(Reply reply : replyList){
				reply.setUser(userDao.getUserSimpleInfo(reply.getUserNo()));
			}
			board.setReplyList(replyList);
		} 
		resultMap.put("boardList", boardList);
		resultMap.put("user", principal.getName());
		return resultMap;
	}
	
	
	@RequestMapping(value = "/timeLineWrite", method = RequestMethod.POST)
	public Object timeLineWritePost(Board board,Principal principal) {
		String nowDate = CatCelUtil.nowDate();

		board.setUserNo(userDao.getUserNo(principal.getName()));
		board.setRegistDate(nowDate);
		board.setUpdateDate(nowDate);
		timeLineDao.insertBoard(board);
		
		return "success";
	}
	
	@RequestMapping(value = "/timeLineUpdate", method = RequestMethod.POST)
	public Object timeLineUpdate(String content,Principal principal) {
		
		return "";
	}
	
	
	@RequestMapping(value = "/replyWrite", method = RequestMethod.POST)
	public Object replyWritePost(Reply reply,Principal principal) {
		String nowDate = CatCelUtil.nowDate();
		reply.setUserNo(userDao.getUserNo(principal.getName()));
		reply.setRegistDate(nowDate);
		reply.setUpdateDate(nowDate);
		timeLineDao.insertReply(reply);
		
		return "success";
	}
}

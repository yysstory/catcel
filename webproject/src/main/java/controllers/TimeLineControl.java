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
		resultMap.put("boardList", boardList);
		resultMap.put("myEmail",principal.getName());
		return resultMap;
	}
	
	
	@RequestMapping(value = "/timeLineWrite", method = RequestMethod.POST)
	public Object timeLineWritePost(Board board,Principal principal) {
		String nowDate = CatCelUtil.nowDate();

		board.setUserNo(userDao.getUserNo(principal.getName()));
		board.setRegistDate(nowDate);
		board.setUpdateDate(nowDate);
		timeLineDao.insertBoard(board);
		timeLineDao.addParent(principal.getName());
		return "success";
	}
	
	@RequestMapping(value = "/timeLineUpdate", method = RequestMethod.POST)
	public Object timeLineUpdate(String boardNo,String content,Principal principal) {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();	

		System.out.println(boardNo);
		System.out.println(content);
		
		timeLineDao.updateBoard(content, Integer.parseInt(boardNo));
		
		List<Board> boardList = timeLineDao.selectBoardOne(Integer.parseInt(boardNo));
		resultMap.put("boardList", boardList);
		resultMap.put("myEmail",principal.getName());
		
		return resultMap;
	}
	
	@RequestMapping(value = "/timeLineDelete", method = RequestMethod.POST)
	public Object timeLineDelete(String parentValue, String boardNoValue, Principal principal) {
		if(parentValue.equals(boardNoValue)){
			System.out.println("deleteBoard진입");
			timeLineDao.deleteBoard(Integer.parseInt(parentValue));
		}else{
			timeLineDao.deleteReply(Integer.parseInt(boardNoValue));
		}

		return "";
	}
	
	
	@RequestMapping(value = "/replyWrite", method = RequestMethod.POST)
	public Object replyWritePost(Board board,int boardNoParent,Principal principal) {
		String nowDate = CatCelUtil.nowDate();
		board.setParent(boardNoParent);
		board.setUserNo(userDao.getUserNo(principal.getName()));
		board.setRegistDate(nowDate);
		board.setUpdateDate(nowDate);
		timeLineDao.insertBoard(board);
		List<Board> selectBoard = timeLineDao.selectBoardOne(boardNoParent);
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("boardList", selectBoard);
		return "success";
	}
	
	@RequestMapping(value = "/replyDelete", method = RequestMethod.POST)
	public Object replyDelete(String content,Principal principal) {
		
		return "";
	}
}

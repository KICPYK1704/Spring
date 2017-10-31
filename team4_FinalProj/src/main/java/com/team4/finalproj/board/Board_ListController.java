package com.team4.finalproj.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.team4.model.board.BoardDaoInter;

@Controller
public class Board_ListController {
	@Autowired
	private BoardDaoInter daoInter;
	
	@RequestMapping(value="board_list", method=RequestMethod.GET)
	public ModelAndView board_list(@RequestParam("des_id")String des_id){
		return new ModelAndView("board/board_index", "board_list", daoInter.getDataAll(des_id));
	}
	
	@RequestMapping(value="board_reply", method=RequestMethod.GET)
	public ModelAndView reply_list(@RequestParam("board_no")String board_no){
		return new ModelAndView("board/board_reply", "reply_list", daoInter.getReplyAll(board_no));
	}
	
	
}

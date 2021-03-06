package com.team4.finalproj.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team4.model.board.BoardDaoInter;

@Controller
public class Board_InsertController {
	@Autowired
	private BoardDaoInter daoInter;
	
	@RequestMapping(value="board_insert", method=RequestMethod.POST)
	public String board_insert(BoardBean boardBean){
		boolean b = daoInter.insertBoard(boardBean);
		if(b){
			return "redirect:/board_list?des_id=" + boardBean.getBoard_designerid();
		}else{
			return "redirect:/error.jsp";
		}
	}
}

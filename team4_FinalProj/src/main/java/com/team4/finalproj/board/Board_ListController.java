package com.team4.finalproj.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.team4.model.board.BoardDaoInter;

@Controller
public class Board_ListController {
	@Autowired
	private BoardDaoInter daoInter;
	
	@RequestMapping(value="board_list", method=RequestMethod.GET)
	public ModelAndView list(){
		return new ModelAndView("Board/board_index", "board_list", daoInter.getDataAll());
	}
}

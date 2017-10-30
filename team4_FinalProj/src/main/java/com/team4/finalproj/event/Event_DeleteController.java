package com.team4.finalproj.event;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.team4.model.board.BoardDaoInter;

@Controller
public class Event_DeleteController {
	@Autowired
	private BoardDaoInter daoInter;
	
	@RequestMapping(value="event_delete", method=RequestMethod.GET)
	public String board_delete(@RequestParam("board_no")String board_no, @RequestParam("des_id")String des_id){
		boolean b = daoInter.deleteBoard(board_no);
		if(b){
			return "redirect:/board_list?delete_ok=ok&des_id=" + des_id;
		}else{
			return "redirect:/error.jsp";
		}
	}
}

package com.team4.finalproj.event;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.team4.model.event.EventDaoInter;

@Controller
public class Event_DetailController {
	@Autowired
	private EventDaoInter daoInter;
	
	@RequestMapping(value="event_detail", method=RequestMethod.GET)
	public ModelAndView event_list(@RequestParam("event_no")String event_no){
		ModelAndView mv = new ModelAndView("event/event_detail");
		mv.addObject("detail", daoInter.getDetail(event_no));
		mv.addObject("reply_list", daoInter.getReplyAll(event_no));
		return mv;
	}
	
}

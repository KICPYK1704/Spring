package com.team4.finalproj.event;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.team4.model.event.EventDaoInter;

@Controller
public class Event_ListController {
	@Autowired
	private EventDaoInter daoInter;
	
	@RequestMapping(value="event_list", method=RequestMethod.GET)
	public ModelAndView event_list(){
		return new ModelAndView("event/event_list", "event_list", daoInter.getDataAll());
	}
	
}

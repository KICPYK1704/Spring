package com.team4.model.event;

import java.util.List;

import com.team4.finalproj.event.EventBean;
import com.team4.finalproj.event.EventImageBean;

public interface EventDaoInter {
	List<EventDto> getDataAll();
	List<EventReplyDto> getReplyAll(String event_no);
	EventDto getDetail(String event_no);
	boolean insertEvent(EventBean eventBean);
	boolean insertEventImage(EventImageBean eventImageBean);
}

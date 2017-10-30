package com.team4.model.event;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EventDao implements EventDaoInter {
	@Autowired
	private EventAnnoInter annoInter;
	
	@Override
	public List<EventDto> getDataAll() {
		return annoInter.getDataAll();
	}
	
	@Override
	public List<EventReplyDto> getReplyAll(String event_no) {
		return annoInter.getReplyAll(event_no);
	}
	
	@Override
	public EventDto getDetail(String event_no) {
		return annoInter.getDetail(event_no);
	}
}

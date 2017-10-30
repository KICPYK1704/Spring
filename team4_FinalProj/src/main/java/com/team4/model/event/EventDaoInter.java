package com.team4.model.event;

import java.util.List;

public interface EventDaoInter {
	List<EventDto> getDataAll();
	List<EventReplyDto> getReplyAll(String event_no);
	EventDto getDetail(String event_no);
}

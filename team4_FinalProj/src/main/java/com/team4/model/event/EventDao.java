package com.team4.model.event;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team4.finalproj.event.EventBean;
import com.team4.finalproj.event.EventImageBean;

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
	
	@Override
	public boolean insertEvent(EventBean eventBean) {
		boolean b = false;
		try {
			eventBean.setEvent_no((annoInter.getNewNo() + 1));
			boolean re = annoInter.insertEvent(eventBean);
			if(re) b = true;
		} catch (Exception e) {
			System.out.println("insertEvent err : " + e);
		}
		return b;
	}
	
	@Override
	public boolean insertEventImage(EventImageBean eventImageBean) {
		boolean b = false;
		try {
			eventImageBean.setImg_no((annoInter.getNewImgNo() + 1));
			eventImageBean.setImg_eventno(annoInter.getNewNo());
			boolean re = annoInter.insertEventImage(eventImageBean);
			if(re) b = true;
		} catch (Exception e) {
			System.out.println("insertEventImage err : " + e);
		}
		return b;
	}
	
//	@Override
//	public boolean deleteBoard(String board_no) {
//		boolean b = false;
//		try {
//			boolean re = annoInter.deleteBoard(board_no);
//			if(re) b = true;
//		} catch (Exception e) {
//			System.out.println("insertBoard err : " + e);
//		}
//		return b;
//	}
}

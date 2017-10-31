package com.team4.model.event;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.team4.finalproj.event.EventBean;
import com.team4.finalproj.event.EventImageBean;

public interface EventAnnoInter {
	@Select("select event_no, event_writer, event_title, event_content, event_regdate, event_hit, img_url from event left outer join eventimage on event_no = img_eventno")
	List<EventDto> getDataAll();
	
	@Select("select * from eventreply where reply_eventno = #{event_no} order by reply_regdate desc")
	List<EventReplyDto> getReplyAll(String event_no);
	
	@Select("select max(event_no) from event")
	String getNewNo();
	
	@Select("select max(reply_no) from eventreply")
	String getNewReplyNo();
	
	@Select("select max(img_no) from eventimage")
	String getNewImgNo();
	
	@Select("select event_no, event_writer, event_title, event_content, event_regdate, event_hit, img_url, (select count(reply_no) from eventreply where reply_eventno = event_no) as reply_count from event left outer join eventimage on event_no = img_eventno where event_no = #{event_no}")
	EventDto getDetail(String event_no);
	
	@Insert("insert into event values(#{event_no}, #{event_writer}, #{event_title}, #{event_content}, now(), 0)")
	boolean insertEvent(EventBean eventBean);
	
	@Insert("insert into eventimage values(#{img_no}, #{img_eventno}, #{img_url})")
	boolean insertEventImage(EventImageBean eventImageBean);
}

package com.team4.model.event;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EventDao implements EventDaoInter {
	@Autowired
	private EventAnnoInter annoInter;
}

package com.team4.model.order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDao implements OrderDaoInter {
	@Autowired
	private OrderAnnoInter annoInter;
}

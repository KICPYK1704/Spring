package com.team4.model.FAQ;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FAQDao implements FAQDaoInter {
	@Autowired
	private FAQAnnoInter annoInter;
}

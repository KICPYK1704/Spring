package com.team4.model.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao implements MemberDaoInter {
	@Autowired
	private MemberAnnoInter annoInter;
}

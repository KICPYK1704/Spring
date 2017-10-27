package com.team4.model.member;

import com.team4.finalproj.member.MemberBean;

public interface MemberDaoInter {
	boolean insertData(MemberBean bean);
	
	 boolean loginMember(MemberBean bean);
}

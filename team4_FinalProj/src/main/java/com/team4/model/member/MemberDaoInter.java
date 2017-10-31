package com.team4.model.member;

import com.team4.finalproj.member.MemberBean;

public interface MemberDaoInter {
	boolean insertData(MemberBean bean);
	
	 boolean loginMember(MemberBean bean);
	 
	 MemberDto getMemberDataAll(String mem_id);
 
	 boolean updateMember(MemberBean bean);
	 
	 boolean deleteMember(String mem_id);
}

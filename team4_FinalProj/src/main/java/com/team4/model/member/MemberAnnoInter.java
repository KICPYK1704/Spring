package com.team4.model.member;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.team4.finalproj.member.MemberBean;

public interface MemberAnnoInter {

	@Insert("insert into member values(#{mem_id},#{mem_pwd},#{mem_name},#{mem_tel},#{mem_email},#{mem_address},null,now())")
	int insertmember(MemberBean bean);
	
	@Select("select mem_id, mem_pwd from member where mem_id=#{mem_id}")
	MemberDto loginMember(MemberBean bean);
}

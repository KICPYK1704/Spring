package com.team4.model.member;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.team4.finalproj.member.MemberBean;

public interface MemberAnnoInter {

	@Insert("insert into member values(#{mem_id},#{mem_pwd},#{mem_name},#{mem_tel},#{mem_email},#{mem_address},null,now())")
	int insertmember(MemberBean bean);
	
	@Select("select mem_id, mem_pwd from member where mem_id=#{mem_id}")
	MemberDto loginMember(MemberBean bean);
	
	@Select("select mem_id, mem_pwd, mem_name, mem_tel, mem_email, mem_address from member where mem_id=#{mem_id}")
	MemberDto getMemberDataAll(String mem_id);
	
	@Update("update member set mem_pwd=#{mem_pwd}, mem_name=#{mem_name}, mem_tel=#{mem_tel}, "
			+ "mem_email=#{mem_email}, mem_address=#{mem_address} where mem_id=#{mem_id}")
	int updateMember(MemberBean memberBean);

	@Delete("delete from member where mem_id=#{mem_id}")
	int deleteMember(String mem_id);
}
  
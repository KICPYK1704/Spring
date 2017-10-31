package com.team4.model.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team4.finalproj.member.MemberBean;

@Repository
public class MemberDao implements MemberDaoInter {
	@Autowired
	private MemberAnnoInter annoInter;
	
	public boolean insertData(MemberBean bean) {
		boolean b= false;
		System.out.println(bean.getMem_name());
		int a = annoInter.insertmember(bean);
		if(a > 0) b = true;	
		return b;
	}
	
	
	public boolean loginMember(MemberBean bean){
		boolean b = false;
		
		
		MemberDto dto = annoInter.loginMember(bean);
		System.out.println(bean.getMem_id());
		if(dto != null)
			if(bean.getMem_pwd().equals(dto.getMem_pwd()))
				b = true;
		
		return b;
	}
	
	
	public MemberDto getMemberDataAll(String mem_id){
		
		
		MemberDto dto = null;
		if(mem_id != null){
			dto = new MemberDto();
			dto = annoInter.getMemberDataAll(mem_id);
		}
		
		return dto;
	}
	
	
	public boolean updateMember(MemberBean bean) {
		boolean b= false;
		
		int a = annoInter.updateMember(bean);
		System.out.println(a);
		if(a > 0) b = true;	
		return b;
	}
	
	public boolean deleteMember(String mem_id) {
		boolean b= false;
		
		int a = annoInter.deleteMember(mem_id);
		System.out.println(a);
		if(a > 0) b = true;	
		return b;
	}
	
}








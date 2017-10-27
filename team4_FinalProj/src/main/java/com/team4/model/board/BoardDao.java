package com.team4.model.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDao implements BoardDaoInter {
	@Autowired
	private BoardAnnoInter annoInter;
	
	@Override
	public List<BoardDto> getDataAll(String des_id) {
		return annoInter.getDataAll(des_id);
	}
	
	@Override
	public List<BoardReplyDto> getReplyAll(String board_no) {
		return annoInter.getReplyAll(board_no);
	}
}

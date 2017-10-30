package com.team4.model.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team4.finalproj.board.BoardBean;

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
	
	@Override
	public boolean insertBoard(BoardBean boardBean) {
		boolean b = false;
		try {
			boardBean.setBoard_no((annoInter.getNewNo() + 1));
			boolean re = annoInter.insertBoard(boardBean);
			if(re) b = true;
		} catch (Exception e) {
			System.out.println("insertBoard err : " + e);
		}
		return b;
	}
	
	@Override
	public boolean deleteBoard(String board_no) {
		boolean b = false;
		try {
			boolean re = annoInter.deleteBoard(board_no);
			if(re) b = true;
		} catch (Exception e) {
			System.out.println("insertBoard err : " + e);
		}
		return b;
	}
}

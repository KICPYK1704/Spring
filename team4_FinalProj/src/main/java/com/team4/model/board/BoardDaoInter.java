package com.team4.model.board;

import java.util.List;

import com.team4.finalproj.board.BoardBean;

public interface BoardDaoInter {
	List<BoardDto> getDataAll(String des_id);
	List<BoardReplyDto> getReplyAll(String board_no);
	boolean insertBoard(BoardBean boardBean);
	boolean deleteBoard(String board_no);
}

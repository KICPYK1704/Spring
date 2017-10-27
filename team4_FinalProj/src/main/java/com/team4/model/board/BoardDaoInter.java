package com.team4.model.board;

import java.util.List;

public interface BoardDaoInter {
	public List<BoardDto> getDataAll(String des_id);
	public List<BoardReplyDto> getReplyAll(String board_no);
}

package com.team4.model.board;

import java.util.List;

import org.apache.ibatis.annotations.Select;

public interface BoardAnnoInter {
	@Select("select * from board")
	List<BoardDto> getDataAll();
}

package com.team4.model.board;

import java.util.List;

import org.apache.ibatis.annotations.Select;

public interface BoardAnnoInter {
	@Select("select board_no, board_designerid, board_writer, board_content, board_regdate, (select count(boardReply_no) from boardreply where boardreply_bno = board_no) as reply_count from board where board_designerid = #{des_id} order by board_regdate desc")
	List<BoardDto> getDataAll(String des_id);
	
	@Select("select * from boardreply where boardReply_bno = #{board_no} order by boardReply_regdate desc")
	List<BoardReplyDto> getReplyAll(String board_no);
}

package com.team4.finalproj.board;

public class BoardBean {
	private String board_no, board_designerid, board_writer, board_content, board_regdate, reply_count;

	public String getBoard_no() {
		return board_no;
	}

	public String getReply_count() {
		return reply_count;
	}

	public void setReply_count(String reply_count) {
		this.reply_count = reply_count;
	}

	public void setBoard_no(String board_no) {
		this.board_no = board_no;
	}

	public String getBoard_designerid() {
		return board_designerid;
	}

	public void setBoard_designerid(String board_designerid) {
		this.board_designerid = board_designerid;
	}

	public String getBoard_writer() {
		return board_writer;
	}

	public void setBoard_writer(String board_writer) {
		this.board_writer = board_writer;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public String getBoard_regdate() {
		return board_regdate;
	}

	public void setBoard_regdate(String board_regdate) {
		this.board_regdate = board_regdate;
	}
	
}

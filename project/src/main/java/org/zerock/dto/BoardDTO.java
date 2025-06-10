package org.zerock.dto;

import lombok.Data;

@Data
public class BoardDTO {
	
	// 게시판 번호
	private int bno;	
	// 게시판 작성자
	private String writer;	
	// 게시판 제목
	private String title;
	// 게시판 내용
	private String content;
	// 게시판 조회수
	private int viewcount;
	// 게시판 카테고리
	private String category;
	// 게시판 좋아요
	private int likes;

}

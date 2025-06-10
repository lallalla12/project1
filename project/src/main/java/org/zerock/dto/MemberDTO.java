package org.zerock.dto;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class MemberDTO {
	
	// 사용자 번호
	private int usernum;
	// 사용자 아이디
	private String userid;	
	// 사용자 비밀번호
	private String password;
	// 사용자 이름
	private String name;
	// 사용자 전화번호
	private String phonenum;
	// 사용자 이메일
	private String email;
	
}

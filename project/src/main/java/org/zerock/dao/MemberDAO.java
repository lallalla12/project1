package org.zerock.dao;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.zerock.dto.MemberDTO;
import org.zerock.util.DBConnectionManager;

public class MemberDAO {

	// db 서버연결 담당 객체
	private Connection conn;
	// sql 실행하기위한 객체
	private PreparedStatement pstmt;
	// sql 실행 후 조회 결과를 담는 객체
	private ResultSet rs;

	// db 연결 생성자
	public MemberDAO() {
		try {
			conn = DBConnectionManager.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// 회원가입 처리 함수
	public int insert(MemberDTO member) {
		String sql = "INSERT INTO member (userid, password, name, phonenum, email) VALUES (?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getUserid());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getPhonenum());
			pstmt.setString(5, member.getEmail());

			// 성공하면 1 반환됨
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 실패
	}

	// DB 연결 종료 함수
	public void close() {
		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

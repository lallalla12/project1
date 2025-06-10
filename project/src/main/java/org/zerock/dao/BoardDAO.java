package org.zerock.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.zerock.dto.BoardDTO;
import org.zerock.util.DBConnectionManager;

public class BoardDAO {

	// db 서버연결 담당
	private Connection conn;
	// sql 실행
	private PreparedStatement pstmt;
	// sql 실행 후 조회 결과를 담음
	private ResultSet rs;

	public BoardDAO() {
		try {
			conn = DBConnectionManager.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// 게시글 등록
	public int insert(BoardDTO board) {
		String sql = "INSERT INTO board (writer, title, content, category) VALUES (?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, board.getWriter());
			pstmt.setString(2, board.getTitle());
			pstmt.setString(3, board.getContent());
			pstmt.setString(4, board.getCategory());

			// 성공시 1 반환
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 실패시 -1 리턴
		return -1;

	}

	// 게시글 전체 조회
	public List<BoardDTO> selectAll() {
		List<BoardDTO> list = new ArrayList<>();
		String sql = "SELECT * FROM board ORDER BY bno DESC";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				BoardDTO board = new BoardDTO();
				board.setBno(rs.getInt("bno"));
				board.setWriter(rs.getString("writer"));
				board.setTitle(rs.getString("title"));
				board.setContent(rs.getString("content"));
				board.setViewcount(rs.getInt("view_count"));
				board.setCategory(rs.getString("category"));
				board.setLikes(rs.getInt("likes"));
				list.add(board);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;

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

package org.zerock.util;  // util 패키지에 넣는 게 일반적이야

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnectionManager {

    private static final String URL = "jdbc:mysql://localhost:3306/project?serverTimezone=UTC";
    private static final String USER = "root";
    private static final String PASSWORD = "0000";

    // 드라이버 로드는 클래스가 처음 로딩될 때 한 번만 실행되게 static 블록으로 처리
    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("MySQL 드라이버 로드 성공!");
        } catch (ClassNotFoundException e) {
            System.out.println("MySQL 드라이버 로드 실패");
            e.printStackTrace();
        }
    }

    // DB 연결을 요청하면 여기서 Connection 객체 반환
    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}

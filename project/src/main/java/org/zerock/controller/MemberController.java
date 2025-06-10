package org.zerock.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.zerock.dao.MemberDAO;
import org.zerock.dto.MemberDTO;

@WebServlet("/member/join")
public class MemberController extends HttpServlet {
		
	// post방식으로 들어온 요청을 처리하는 메서드
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        
        // form 태그 안에 사용자가 입력한 name값을 가져옴
        String userid = request.getParameter("id");
        String password = request.getParameter("pw1");
        String name = request.getParameter("name");
        String phonenum = request.getParameter("tel");
        String email = request.getParameter("email");
        
        
        MemberDTO member = new MemberDTO();
        member.setUserid(userid);
        member.setPassword(password);
        member.setName(name);
        member.setPhonenum(phonenum);
        member.setEmail(email);
        
        // MemberDAO 객체를 만들어 insert() 메서드를 호출함
        MemberDAO dao = new MemberDAO();
        int result = dao.insert(member);

        if (result == 1) {
            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().println("<script>alert('회원가입을 성공적으로 완료하였습니다.'); location.href='/login';</script>");
        } else {
            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().println("<script>alert('회원가입을 실패하였습니다.'); history.back();</script>");
        }
    }
}

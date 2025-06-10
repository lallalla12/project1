package org.zerock.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.dto.MemberDTO;
import org.zerock.service.MemberService;

@Controller
public class LoginController {

	@Autowired
	private MemberService memberService;

	@GetMapping("/userLogin")
	public String showLoginForm() {
		return "login"; // login.jsp
	}

	@PostMapping("/userLogin")
	public String login(@RequestParam("id") String id, @RequestParam("pw1") String pw, HttpSession session,
			Model model) {

		MemberDTO member = new MemberDTO();
		member.setUserid(id);
		member.setPassword(pw);
		MemberDTO loginUser = memberService.login(member);

		if (loginUser != null) {
		    session.setAttribute("loginUser", loginUser);
		    return "redirect:/";
		} else {
		    model.addAttribute("errorMsg", "아이디 또는 비밀번호가 일치하지 않습니다.");
		    return "login";
		}
	}

	@PostMapping("/logout")
	public String logout(HttpSession session) {
		// 세션 제거
		session.invalidate();
		return "redirect:/";
	}
}

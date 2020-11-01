package com.springbook.view.user;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogoutController {
@RequestMapping("/logout.do")
	public String logout(HttpSession session ) {
		//브라우저와 연결된 세션 객체 강제 종료 
        session.invalidate();
		return "login.jsp";
	}

}

package com.springbook.view.user;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ejcompany.myapp.user.UserVO;
import com.ejcompany.myapp.user.impl.UserDAO;

@Controller
public class LoginController {
	
@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String loginView(UserVO vo) {
		System.out.println("화면이동,링크타고왔을때");
		vo.setId("a");
		vo.setPassword("aa");
		return "login.jsp";
}
	
	
	
@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String login(UserVO vo,UserDAO userDAO,HttpSession session ) {
		System.out.println("로그인 처리,로그인 버튼 눌렀을때");
		
		//아이디 안쓰면 오류발생시키기
		if(vo.getId() == null || vo.getId().equals("")) {
			throw new IllegalArgumentException("아이디는 반드시 입력해야 합니다.");
		}
		
		
		if(userDAO.getUser(vo) != null){
			session.setAttribute("userName", userDAO.getUser(vo).getName());	 
				return "getBoardList.do";
		}else {
				return "login.jsp";
			 }
		}

}

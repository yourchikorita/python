<%@page import="jdk.internal.org.objectweb.asm.tree.TryCatchBlockNode"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>main</h2>
	<!--
이 페이지는 로그인폼으로 가기전에
 저장된 세션이나  쿠키가 있으면 ~님 로그인하셨음을 보여주고 . 로그아웃 버튼 하단에 있다.
 없으면 로그인폼으로 보냄
 
 1. session 에 'log'값이 없으면 로그인 폼 페이지로 보낸다.
 1-1 혹시 자동로그인에 체크했으면 cookies에 log값이 있을 수 있으니 확해서 있으면 그값을 log에 담고 없으면 로그인하는 폼으로 보낸다.
 2. cookies 가 있으면, 'id'이름의 쿠키가 있으면 그 값을 log에 담는다.
 
 클라이언트로 전송된 쿠키를 서버쪽에서 읽어 들이려면 HttpServletRequest 객체의 getCookies() 메소드를 이용한다.
 Cookie[] list = req.getCookies();
 쿠키의 이름을 추출할 때는 Cookie 객체의 getName( ) 메소드를 사용한다.
 쿠키의 값을 추출 할때는 Cookie 객체의 getValue( ) 메소드를 사용한다
 
 -->
<%
	//session 에 저장된 id가져온다.
	String log = (String)session.getAttribute("log");
	//cookie에 저장된 id가져온다. 저장 안된 걸수도 있으니까 try catch
	try{
		Cookie[] cookies = request.getCookies();
		if(cookies != null){
			out.println("현재 설정된 쿠키의 개수 : " + cookies.length); 
			for(Cookie c : cookies){
				if(c.getName().equals("id")){
					log = c.getValue();
				}
			}
		}
	}catch(Exception e){
		
	}
	
	if(log != null){
		%><%=log %>님이 로그인 중입니다.
		<form method="post" action="05_logout.jsp">
		<input type=submit value="러그아웃">
		</form>
	<%}
	else if(log == null){
		response.sendRedirect("03_login.jsp");
	}
	%>
	
	
	
</body>
</html>
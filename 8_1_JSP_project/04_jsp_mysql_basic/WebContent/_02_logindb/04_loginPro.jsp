<%@page import="_02_login.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
1.utf-8인코딩
2.앞 페이지에서 입력한 파라미터 값 가져온다.
3.memberDao 에서 미리 정의해둔 userCheck(id,pw맞는지 확인)
	check결과값이 1이면 정상적인 인증 성공!
	1이면 session 에 log에 id 넣고 유지 시간 설정
	비번을 틀렸다면   비번틀렸다는 알람띄우고 앞페이지로 이동시킴 
	아디가 틀렸다면 아디 알람띄우고 앞페이지로 이동시킴
4.자동 로그인에 체크 했으면, on이라면 id 쿠키만들고 쿠키 시간 설정하고 쿠키 넣어서 전달.
5.자동로그인 체크 안했으면 쿠키 사용 없앰	
6.모두 성공적이면 00_cookieMain.jsp 로 보내기
[특정 쿠키를 더 이상 사용하지 못하게 하기 위해서는 ]
cookies[i].setMaxAge(0);쿠키의 유효시간을 만료시킨다.
response.addCookie(cookies[i]); 해당 쿠키를 응답에 추가(수정)한다.

 -->

<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String saveid = request.getParameter("saveid");
	
	int check = MemberDao.getInstance().userCheck(id,passwd);
	
	if(check ==1){
		session.setAttribute("log",id);//!!주의 log에다가 id를 넣는다.
		session.setMaxInactiveInterval(5);//초
		
		//자동로그인 체크했었다면 쿠키만든다.
		if(saveid != null && saveid.equals("on")){
			Cookie cookie = new Cookie("id",id);
			cookie.setMaxAge(20*60);
			response.addCookie(cookie);
		}else{
			Cookie cookie = new Cookie("id",id);
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}
		response.sendRedirect("00_cookieMain.jsp");
	}else if(check == 0){
		%>
		<script>
		alert("비번 틀림");
		history.go(-1);
		</script>
	<% }else{%>
	<script>
		alert("아디 틀림");
		history.go(-1);
		</script>
	<% }%>
	

</body>
</html>
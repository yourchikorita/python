<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <% 
	 // 세션을 이용한 로그인 처리
	 String id = (String)session.getAttribute("id");
	 
	 // 로그인이 되어있지 않다면
	 if(id == null){
		 id = "GUEST";
	 }
	 %>
	<table>
		<tr height="70">
			<td width="500">
				<a href="01_carMain.jsp" style="text-decoration: none">
				<img alt="" src="img/soul_car_nup.png" height="70">
				</a>
			</td>
			<td border="solid" align="right" width="500">
				<%= id %>님
				<%
					if(id.equals("GUEST")){
				%>
				<button onclick="location.href='05_memberLogin.jsp'"> 로그인 </button>
				<%						
					}else{
				 %>
				
				
				<button onclick="location.href='07_memberLogout.jsp'"> 로그아웃 </button> 
				<%						
					}
				 %>
			</td>
		</tr>
	</table>
	<div style="font-size:30px; background-color:#eadef6">
	<span style="padding-right:130px;"><a href="01_carMain.jsp?center=08_carReserveMain.jsp" style="text-decoration: none">예 약 하 기</a></span>
	<span><a href="01_carMain.jsp?center=14_carReserveView.jsp" style="text-decoration: none">예 약 확 인</a></span>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
int dbId = Integer.parseInt(request.getParameter("dbId")); 
int dbPw = Integer.parseInt(request.getParameter("dbPw"));
int myId = Integer.parseInt(request.getParameter("id"));
int myPw= Integer.parseInt(request.getParameter("pw"));
String result =""; 
if (dbId == myId && dbPw == myPw) {
	result="�α��� ����";
}
if (dbId != myId || dbPw != myPw) {
	result="�α��� ����";
}
if(result.equals("")){ result="���� ";}

%>
<h2> ���  <%=result %> </h2> 
</body>
</html>
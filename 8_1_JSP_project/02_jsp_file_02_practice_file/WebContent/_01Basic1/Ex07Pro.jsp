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
int num1 = Integer.parseInt(request.getParameter("num1"));
int num2 =  Integer.parseInt(request.getParameter("num2"));
int num3 =  Integer.parseInt(request.getParameter("num3"));
int maxNum = num1;

if (maxNum < num2) {
	maxNum = num2;
}
if (maxNum < num3) {
	maxNum = num3;
}

%>
<h2> ���� ū ���ڴ� <%=maxNum %> �Դϴ�</h2>
<button onclick="location.href='Ex07.jsp'"> �ڷΰ��� </button>
</body>
</html>
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
int height = Integer.parseInt(request.getParameter("height"));
int parents =  Integer.parseInt(request.getParameter("parents"));
String result =""; 
if(height >= 120) {
	result= "���̱ⱸ �̿밡���մϴ�.";
}
if(height < 120) {

	if(parents == 1) {
		result= "���̱ⱸ �̿밡���մϴ�.";
	}
	if(parents == 0) {
		result= "���̱ⱸ�� �̿��� �� �����ϴ�.";
	}
}

%>
<h2> <%=result %> </h2>
<button onclick="location.href='Ex06.jsp'"> �ڷΰ��� </button>

</body>
</html>
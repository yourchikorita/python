<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<pre>

 ���� �⺻ ���� 
 ��ư�� �Ѱ� ����� ��ư Ŭ���Ҷ�����
  ���� 1�� �����ϰ� ���ڰ� 5�� �Ǿ��� �� ��ư �����  
  
</pre>

<%
int btn =0; 
if(session.getAttribute("btn")==null){
	
}else{
	btn = (int)session.getAttribute("btn");
}
if(btn < 5){
%>
<button onclick="<%  btn++; session.setAttribute("btn", btn); %> location.href='basic01.jsp?btn=<%=btn%>'"> Ŭ�� </button>
<% }else{
	%>
	<h2> 5�� Ŭ�� ����! </h2>
	<%
	session.invalidate();	
}%>


</body>
</html>
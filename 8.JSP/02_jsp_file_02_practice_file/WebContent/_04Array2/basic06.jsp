<%@page import="java.util.Random"%>
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
 # ��÷����[1�ܰ�] 30%�� ��÷Ȯ���� ��÷ ������ ���弼�� 
</pre>
<%
  Random rd = new Random(); 
  String result =request.getParameter("result");
  if(result!=null){
  int rdNum = rd.nextInt(10);
  if(rdNum < 3) {
	result="��÷";
    }
   if(rdNum >= 3) {
	result="��";
     }
   
    out.println("���� ��� = " + result);
  }else{
%>
  <button onclick="location.href='basic06.jsp?result=<%=result%>'"> ��÷ Ȯ�� </button>

<%} %>
</body>
</html>
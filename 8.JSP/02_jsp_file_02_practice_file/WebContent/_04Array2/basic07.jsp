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
  # ��� ���� ���߱� ����
  1. 150~250 ������ ���� ���� ����
  2. ���� ������ ��� ���ڸ� ���ߴ� �����̴�.
  ��)
		249		: 4

  3. ������ ���߸� �ٽ� ���ο� ���� ���ڷ� ���ߴ� ���� 
</pre>

<%
  Random rd = new Random(); 
 int game;
  if(request.getParameter("num")!=null){
	  game= Integer.parseInt(request.getParameter("game"));
	  int answer = game%100/10;
	  int num = Integer.parseInt(request.getParameter("num"));
	  
	  if(answer==num){
		  out.print("<h2> ���� "+ game +" ���� �����! </h2>");
		  game = rd.nextInt(101)+150;
	  }else{
		  out.print("<h2> ���� "+ game +" Ʋ�ȴ�! ������ : "+ answer + " </h2>"); 
	  }
	  
  }else{
	  game = rd.nextInt(101)+150;
	  
  }
  out.println("<h2>" + game + " �� ��� ���ڴ�?</h2>");
  for(int i =0; i< 10; i++){
%>


<button onclick="location.href='basic07.jsp?game=<%=game%>&num=<%=i%>'"> <%=i %></button> &nbsp;&nbsp;
<%} %>
</body>
</html>
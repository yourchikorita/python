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
  # ����Ų���31
  1. p1�� p2�� �����ư��鼭 1~3�� �Է��Ѵ�.
  2. br�� p1�� p2�� �Է°��� �����ؼ� �����Ѵ�.
  3. br�� 31�� ������ ������ ����ȴ�.
  4. �¸��ڸ� ����Ѵ�.
  
 ��) 
  1�� : p1(2)	br(2)
  2�� : p2(1)	br(3)
  3�� : p1(3)	br(6)
</pre>
<%
int num =0; 
String player ="P1"; 
 if(request.getParameter("num")!=null){
	  num = Integer.parseInt(request.getParameter("num")); 
	  player =  request.getParameter("player"); 
	 
 }
 
 if(num > 30){

	   if(player.equals("P1")){
			 %>
			   <h2> �÷��̾� [P2]�� �̰���ϴ� </h2>
			   <%    
	   }else{
		   %>
		   <h2> �÷��̾� [P1]�� �̰���ϴ� </h2>
		   <%  
	   }  
	   %>
	   <button onclick="location.href='basic08.jsp'"> ���� </button>
	   <%
 }else{
%>
   <h2> ���� ���ڴ� <%=num%> �÷��̾�� <%=player %></h2>
   <% if(player.equals("P1")){
	   %>
	   <button onclick="location.href='basic08.jsp?num=<%=num+1%>&player=P2'"> 1 </button>
	   <button onclick="location.href='basic08.jsp?num=<%=num+2%>&player=P2'"> 2 </button>
	     <button onclick="location.href='basic08.jsp?num=<%=num+3%>&player=P2'"> 3 </button>
	   
 <%  }else if(player.equals("P2")) { %>
  <button onclick="location.href='basic08.jsp?num=<%=num+1%>&player=P1'"> 1 </button>
   <button onclick="location.href='basic08.jsp?num=<%=num+2%>&player=P1'"> 2 </button>
     <button onclick="location.href='basic08.jsp?num=<%=num+3%>&player=P1'"> 3 </button>
<% }
   }%>
</body>
</html>
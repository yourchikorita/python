<%@page import="javax.websocket.Session"%>
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
int[] seat;
int count =0;
 if(session.getAttribute("count")==null){
	  seat = new int[7];
	 
 }else{
  seat = (int[])session.getAttribute("seat"); 
  count = (int)session.getAttribute("count");
  }
 
  int seatNum = Integer.parseInt(request.getParameter("seatNum")); 
     seatNum--;
   if(seat[seatNum]==0){
	   seat[seatNum]=1;
	   seatNum++;
	   count++;
	   session.setAttribute("seat", seat);
	   session.setAttribute("count", count);
	   %>
	   <script>
	   alert(<%=seatNum%> +'�� �¼��� ���ŵǾ����ϴ� ');
	   location.href='Ex04.jsp';
	   </script>
	   <%
	      
   }else{
	   %>
	   <script>
	   alert('�̹� �ָŵ� �¼��Դϴ� �ٽ� �������ּ��� ');
	   location.href='Ex04.jsp';
	   </script>
	   
	   <%
   }

%>

</body>
</html>
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
<pre>

  # ��ȭ�� �¼�����
  1. ����ڷκ��� �¼���ȣ(index)�� �Է¹޾� �����ϴ� �ý����̴�.
  2. ���Ű� �Ϸ�Ǹ� �ش� �¼� ���� 1�� �����Ѵ�.
  3. �̹� ���Ű� �Ϸ�� �¼��� �籸���� �� ����.
  4. ��� �¼��� ���� ����ó���� ���� ��ư�� ����� 
  ��Ʈ : �¼� �迭�� �������� ������! 
  ��)
  seat = 0 0 0 0 0 0 0
  
    �¼����� : 1
  seat = 1 0 0 0 0 0 0
  
     �¼����� : 3
  seat = 1 0 1 0 0 0 0
  
     �¼����� : 3
  seat = 1 0 1 0 0 0 0
    �̹� ���Ű� �Ϸ�� �ڸ��Դϴ�.
  ----------------------
</pre>
<% 
	int cnt =0; 
    int[] seat;
    if(session.getAttribute("seat")==null){
     seat = new int[7];
    }else{
    	  cnt = (int)session.getAttribute("count");
    	  seat = (int[])session.getAttribute("seat"); 
    	  
    	  if(cnt >= seat.length){
    		  %>
    		  <h2> ��� �¼��� ���ŵǾ����ϴ� </h2>
    		  <br>
    		  <a href="Ex04.jsp"><button onclick=<%session.invalidate();%>> ���� </button></a>
    		  
    		  <%
    	  }
    		
    }  
	  for(int i =0; i<seat.length;i++){
		  if(seat[i]==0){ 
		  %>
		  <font size="5" color="green">[ <%=i+1 %> ]</font> &nbsp; 
		   <%
		  }else if(seat[i]==1){
			  
			  %>		  
		 <font size="5" color="red">[  <%=i+1 %> ]</font> &nbsp; 
		   <%
		  }
	  }
	  
	  %>
	    <form action="Ex04Pro.jsp">
		   <input type="number" name="seatNum"> 
		   <input type="submit" value="�����ϱ�">
		  </form>
	  



</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<pre>
  # �迭 ��Ʈ�ѷ�[1�ܰ�] : ����
  1) �߰�
  2) ����
  3) ����
  
</pre>

	<button onclick="location.href='Array01.jsp?btn=1'">�߰�</button>
	<button onclick="location.href='Array01.jsp?btn=2'">����</button>
	<button onclick="location.href='Array01.jsp?btn=3'">����</button>

	<br>
	<br>
	<%
 
 int[] arr = {0,0,0,0,0};
 int count = 0;

 if(session.getAttribute("count")!=null){
 arr = (int[])(session.getAttribute("arr"));
 count = (int)(session.getAttribute("count"));
 out.println("<h2> ���� arr �迭  </h2>");

 for( int i=0; i < count; i++ ){

out.print( arr[i]+ "  ");

}   

 }
 out.print("<br><br> ");
   if(request.getParameter("btn")==null){
	   out.println("<h2> ��ư�� Ŭ���ϼ��� </h2>");
   }else{
	    int btn = Integer.parseInt(request.getParameter("btn")); 

    if(btn == 1){
    %>

	<form action="Array01Pro.jsp">
		<input type="hidden" name="btn" value=<%=btn %>> �迭�� �߰��� ����
		�Է��ϼ��� <br> <input type="number" name="num"> <input
			type="submit" value="�߰�">
	</form>
	<% 
    }else if(btn==2){
    	   %>
	<form action="Array01Pro.jsp">
		�迭�� ������ ���� �Է��ϼ��� <br> <input type="hidden" name="btn"
			value=<%=btn %>> <input type="number" name="num"> <input
			type="submit" value="����">
	</form>
	<% 	
    }else if(btn==3){
    	   %>
	<form action="Array01Pro.jsp">
		<input type="hidden" name="btn" value=<%=btn %>> ������ �迭�� �ε���
		���� �Է��ϼ��� <br> <input type="number" name="idx"> <br>
		<br> ������ �迭�� �߰��� ���� �Է��ϼ��� <br> <input type="number"
			name="num"> <input type="submit" value="����">
	</form>
	<% 	
    }
   }
 %>




</body>
</html>
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

  # 369����[2�ܰ�]
  1. 1~100���� �ݺ��� �Ѵ�. 
  2. ������ Ŭ���ϸ� ���ڰ� 1�� �����Ͽ� 369������ ����� ����Ѵ�.
  ��) 1 2 ¦ 4 5 ¦ 7 8 ¦ 10 11 12 ¦ ...
  ��) 33= ¦¦ 36= ¦¦ 66= ¦¦  �� ��µǾ�� �Ѵ� 
 3. 100�� ������ �ٽ� �������� ���ư��� 
</pre>

<%
 int num =0;
 String result="";
 if(request.getParameter("num")!=null){
	
	 num = Integer.parseInt(request.getParameter("num")); 
	 if(num <100){
	 if(num > 10){
		 int n1 = num/10;
		 int n2 = num%10; 

		 if((n1%3==0 && n1>2) || n2%3==0 ){
			 result="¦";
			 if(n1%3==0 && n2%3==0 ){
				 result="¦¦";
		 }
		 }else{
			 result=""+ n1 + n2 +"";
		 }
	 }else{
		 if(num%3==0){
			 result="¦";
		 }else{
			 result="" + num ;
		 }
		 
	 }
	 
	 %>
	 <h2> ���� : <%=num%> ��� <%=result %></h2>
	 <%
 }else{
	 num = 0;
 }
 }
%>
<button onclick="location.href='basic09.jsp?num=<%=num+1 %>'" > ���� </button>

</body>
</html>
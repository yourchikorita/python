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
  # �����л�
  1. 10ȸ �ݺ��� �Ѵ�.
  2. 1~100 ������ ���� ���ڸ� �����Ѵ�.(�л��� ����)
  3. ������ 60�� �̻��̸� �հݻ��̴�.
  ---------------------------------------
  . ������(10��)�� ������ ����� ����Ѵ�.
  . �հ��� ���� ����Ѵ�.
  . 1�� �л��� ��ȣ�� ������ ����Ѵ�.
 
</pre>
<%
Random rd = new Random(); 
int[] stuNo = new int[10];
int pass = 0; 
int total=0; 
int maxScore =0;
int maxIdx=0; 
for(int i =0; i<10;i++){
	int score = rd.nextInt(100)+1;
	 stuNo[i]=score; 
	 total+=stuNo[i];
	 if(stuNo[i] >= 60){
		 pass++; 
	 }
	 if(maxScore < stuNo[i]){
		 maxScore = stuNo[i];
		 maxIdx = i; 
	 }
	 
	 out.println( "�й� : " + (i+1) +" �л� ���� "+ stuNo[i] + "<br>");
}

%>

<br>
<h4> ��ü �л� ���� ���� : <%=total %> ��ü ��� :  <%=(double)total/10 %> </h4>
<h4> �հ��� �� : <%=pass %></h4>
<h4> 1�� �л� ��ȣ  <%=maxIdx+1 %> ���� : <%= maxScore%> </h4>
<button onclick="location.href='basic10.jsp'"> ����� </button>
</body>
</html>
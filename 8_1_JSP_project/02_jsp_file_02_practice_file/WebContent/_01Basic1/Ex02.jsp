<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2> ���� </h2>
<pre> ���� 
3������ ����� 60�� �̻��̸�, �հ� ��� 
 ��, ��� �� �����̶� 50�� �̸��̸�, ���հ� ��� 
</pre>
<%
int kor = 100;
int eng = 87;
int math = 41;

int total  = kor + eng + math; 
double avg = total / 3.0;
String pass="";
boolean check = avg >= 60 && kor >= 50 && eng >= 50 && math >= 50;

if(check){
	pass = "�հ��Դϴ�";
}else{
	pass = "���հ��Դϴ�";
}

%>

<h2> ����� <%=pass %> </h2>

</body>
</html>
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
[�л��������� ���α׷�]

1. arr�迭�� 1~100�� ������ ������ 5�� ����
��   1) 87, 11, 92, 14, 47
		
2. �������� ������ ��� ���
��   2) ����(251) ���(50.2)
		
3. ������ 60�� �̻��̸� �հ�. �հݻ� �� ���
��   3) 2��

4. ������ ���� ���� ���� ��� 
�� 4) 92 
</pre>
<h4> ���� 1 �� </h4>
<%
int[] arr = new int[5];
Random rd = new Random(); 

int score = 0;

for(int i =0; i<arr.length;i++){
	int rdNum = rd.nextInt(100)+1; 
	arr[i]= rdNum;
	out.print(arr[i] + " ");
}

%>
<h4> ���� 2 �� </h4>
<%
for(int i =0; i<arr.length;i++){
	score+=arr[i];
}

double avg =(double)score / arr.length; 
out.println(" ������ " + score + "  ����� " + avg );
%>
<h4> ���� 3 �� </h4>
<%
int cnt = 0;
for(int i=0; i<5; i++) {
	if(arr[i] >= 60) {
		cnt = cnt + 1;
	}
}
out.println("�հݻ� �� = " + cnt + "��");

%>
<h4> ���� 4 �� </h4>
<%
int maxScore = 0;
for(int i=0; i<arr.length; i++) {
	if(maxScore < arr[i]) {
		maxScore =arr[i];
	}
}
out.println("�ְ� ������ = " + maxScore + "��");

%>
</body>
</html>
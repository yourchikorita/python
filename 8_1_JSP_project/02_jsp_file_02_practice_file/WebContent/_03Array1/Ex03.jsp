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
 # OMRī��
1. �迭 answer�� ���蹮���� �������̴�.
2. �迭 hgd�� 1~5 ������ ���� ���� 5���� �����Ѵ�.
3. answer�� hgd ���� ���� ����ǥ�� ����Ѵ�.
4. �� ������ 20���̴�.
��)
answer = {1, 3, 4, 2, 5}
hgd    = {1, 1, 4, 4, 3}
����ǥ     = {O, X, O, X, X}
����        = 40��
</pre>
	<%
		int[] answer = { 1, 3, 4, 2, 5 };
		int[] hgd = new int[5];
		String[] result = new String[hgd.length];
		int score = 0;
		//2�� 
         out.println("answer = ");
		for(int i =0; i < 5; i++){
			out.print(answer[i] + " ");
		}

		Random rd = new Random();
      out.println("<br>"+"hgd =&nbsp; &nbsp; &nbsp;"); 
		for (int i = 0; i < hgd.length; i++) {
			int rdnum = rd.nextInt(5) + 1;
			hgd[i] = rdnum;
			out.print(hgd[i] + " ");
		}
		//3�� 
		for (int i = 0; i < hgd.length; i++) {
			if (answer[i] == hgd[i]) {
				result[i] = "O";
				//4�� 
				score += 20;
			} else {
				result[i] = "X";
			}
		}

		out.println("<br>"+ " ����ǥ=");

		for (int i = 0; i < hgd.length; i++) {
			
			out.print(result[i] + " ");
		}
		
	%>
<br>
    <h2> ������ <%=score %> �� �Դϴ�. </h2>
</body>
</html>
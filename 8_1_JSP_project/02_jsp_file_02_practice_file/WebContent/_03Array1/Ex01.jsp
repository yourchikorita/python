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
		int[] arr = new int[5];
	%>
	<pre>
 ����1) 10���� 50���� arr �迭�� ����
 ����1) 10 20 30 40 50
</pre>
	<%
		for (int i = 0; i < 5; i++) {
			arr[i] = 10 * (i + 1);
			out.print(arr[i] + " ");
		}
	%>
	<pre>
����2) 4�� ����� ���
 ����2) 20 40
</pre>
	<%
		for (int i = 0; i < 5; i++) {
			if (arr[i] % 4 == 0) {
				out.print(arr[i] + " ");
			}
		}
	%>
	<pre>
����3) 4�� ����� �� ���
 ����3) 60
</pre>
	<%
		int tot = 0;
		for (int i = 0; i < 5; i++) {
			if (arr[i] % 4 == 0) {
				tot = tot + arr[i];
			}
		}
		out.println("tot = " + tot);
	%>
	<pre>
����4) 4�� ����� ���� ���
 ����4) 2
</pre>
	<%
		int cnt = 0;
		for (int i = 0; i < 5; i++) {
			if (arr[i] % 4 == 0) {
				cnt = cnt + 1;
			}
		}
		out.println("cnt = " + cnt);
	%>
	<pre>
����5) ¦���� ���� ���
 ����5) 5
</pre>
	<%
		cnt = 0;
		for (int i = 0; i < 5; i++) {
			if (arr[i] % 2 == 0) {
				cnt += 1;
			}
		}
		out.println("cnt = " + cnt);
	%>
</body>
</html>
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

 # �Ҽ�ã��[1�ܰ�]
 1. �Ҽ���, 1�� �ڱ��ڽ����θ� �������� ��
 2. ��) 2, 3, 5, 7, 11, 13, ..
 3. ��Ʈ
 1) �ش� ���ڸ� 1���� �ڱ��ڽű��� ������.
 2) �������� 0�� ������ ī��Ʈ�� ����.
 3) �� ī��Ʈ ���� 2�̸� �Ҽ��̴�.
 4) 6/1 6/2 6/3 6/4 6/5 6/6	cnt=4	�Ҽ�x

���� �� ���� �Է¹޾�, �ش� ���ڰ� �Ҽ����� �ƴ��� �Ǻ��Ѵ�.
 </pre>
	<%
		int num = 0;
		int count = 0;
		String result = "";
		if (request.getParameter("num") == null) {
	%>
	<form action="Ex03.jsp">
		���� �Ѱ��� �Է��Ͻÿ�
		<p>
			<input type="number" name="num"> <input type="submit"
				value="�Ҽ�ã��">
		</p>
	</form>
	<%
		} else {
			num = Integer.parseInt(request.getParameter("num"));
			int i = 1;
			while (i <= num) {
				if (num % i == 0) {
					count++;
				}
				i++;
			}
			if (count == 2) {
				result = "�Ҽ��̴�.";
			} else {
				result = "�Ҽ��� �ƴϴ�.";
			}
	%>

	<h2>
		�����
		<%=result%>
	</h2>

	<%
		}
	%>




</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<pre> ����ü
 
        int[] arr = {10, 20, 30, 40, 50};
		int[] hakbuns = {1001, 1002, 1003, 1004, 1005};
		int[] scores  = {  87,   11,   45,   98,   23};
		������Ʈ���� �̿��ؼ� ���� 1�� Ǯ�� ����2�� ����2 Ǯ�� ���� 3 ������ �ϱ�  </pre>

	<%
		int[] arr = { 10, 20, 30, 40, 50 };
		int[] hakbuns = { 1001, 1002, 1003, 1004, 1005 };
		int[] scores = { 87, 11, 45, 98, 23 };

		int question = 0;
		if (request.getParameter("question") == null) {
			question = 1;
		} else {
			question = Integer.parseInt(request.getParameter("question"));
		}
		if (question == 1) {
	%>
	<pre>
		 ���� 1) �ε��� 2���� �Է¹޾� �� ��ü�ϱ�
		 ��    1) �ε���1 �Է� : 1
		               �ε���2 �Է� : 3
			   {10, 40, 30, 20, 50}
	
	</pre>
	<form action="Ex05Pro.jsp">
		<p>
			����
			<%=question%>
			) �ε��� 2���� �Է¹޾� �� ��ü�ϱ�
		</p>
		<input type="hidden" name=question value="<%=question%>"> �ε��� 1
		: <input type="number" name="num1"> �ε��� 2 : <input
			type="number" name="num2"> <input type="submit"
			value="���� <%=question%>">
	</form>
	<%
		}

		else if (question == 2) {
	%>
	<pre>
		 ���� 2) �� 2���� �Է¹޾� �� ��ü�ϱ�
	 	 ��    2) ��1 �Է� : 40
		               ��2 �Է� : 20
		       {10, 20, 30, 40, 50}
		</pre>
	<form action="Ex05Pro.jsp">
		<p>
			����
			<%=question%>
			) �� 2���� �Է¹޾� �� ��ü�ϱ�
		</p>
		<input type="hidden" name=question value="<%=question%>"> �� 1 :<input
			type="number" name="num1"> �� 2 :<input type="number"
			name="num2"> <input type="submit" value="����  <%=question%>">
	</form>
	<%
		}

		else if (question == 3) {
	%>
	<pre> ���� 3) �й� 2���� �Է¹޾� ���� ��ü�ϱ�
		     ��    3) �й�1 �Է� : 1002
		                 �й�2 �Է� : 1003
			     {87, 45, 11, 98, 23}</pre>
	<form action="Ex05Pro.jsp">
		<p>
			����
			<%=question%>
			) �й� 2���� �Է¹޾� ���� ��ü�ϱ�
		</p>
		<input type="hidden" name=question value="<%=question%>"> �й� 1:
		<input type="number" name="num1"> �й� 2: <input type="number"
			name="num2"> <input type="submit" value="���� <%=question%>">
	</form>
	<%
		}
		if (question > 3) {
	%>
	<h2>��� ���� �� Ǯ�����ϴ�</h2>
	<%
		}
	%>


</body>
</html>
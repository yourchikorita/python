<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<h2></h2>
<pre>������ ����[1�ܰ�]
1. ������ ������ �����ϱ� ����, ���� 2���� �Է¹޴´�.
2. �Է¹��� ������ ������ ���� ĭ�� ���´� 
3. ������ �ش��ϴ� ������ �Է¹޴´�.
4. ��� ���� Ex05pro.jsp ���� ó���ϰ� 
      ������ �� "����" �Ǵ� "��"�� ����Ѵ�.

</pre>

<form action="Ex05pro.jsp">
	<table>
		<tr>
			<td colspan="3">���� 1 * ���� 2 = ����</td>
		</tr>
		<tr>
			<td><input type="number" name="num1"></td>
			<td>&nbsp;&nbsp; * &nbsp;&nbsp;</td>
			<td><input type="number" name="num2"></td>
			<td>&nbsp;&nbsp; = &nbsp; <input type="text" name="answer">

			</td>
		</tr>
	</table>
	<input type="submit" value="Ȯ��">


</form>
</body>
</html>
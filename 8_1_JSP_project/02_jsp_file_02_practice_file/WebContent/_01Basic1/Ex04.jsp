<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<h2> </h2>
   <%
   int dbId = 1234;
	int dbPw = 1111;
   %>
   
<pre> ���� 
 # �α���[1�ܰ�]
  1. Id�� Pw�� �Է¹޴´�.
 2. id�� pw �׸���  dbId , dbPw(hidden ������ )�� �� ��θ� Ex04pro.jsp�� �� �����Ѵ� 
 3.  Ex04pro.jsp ���� �Է¹��� �����Ϳ� ���� �����͸� ���� �α��� ó���� �����Ѵ�. 
   ��) �α��� ����  or �α��� ����
  dbID = 1234;
  dbPw = 1111;
   </pre>

   <h2>�α���</h2>
   <form action="Ex04pro.jsp">
     ���̵� : <input type="text" name="id" />
      ��й�ȣ : <input type="password" name="pw" /> 
   <input type="hidden" name="dbId" value="<%=dbId %>"/>    
    <input type="hidden" name="dbPw" value="<%=dbPw %>"/>  
   <input type="submit" value="�α���" >
   </form>


</body>
</html>
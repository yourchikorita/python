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
 *  ���� ����
  1. 0 �Ǵ� 1�� ���� ���ڸ� �����Ѵ�.
  2. 0�� ������ �ո�, 1�� ������ �޸��̴�.
  3. ������ �յ޸��� ���ߴ� �����̴�.
  4. �ѹ� �Ҷ�����  0 �Ǵ� 1�� ���� ���ڸ� �����Ѵ�.
</pre>

<%
 Random rd = new Random(); 
int coin = rd.nextInt(2);
int btn = 2;
String answer="";
if(request.getParameter("btn")!=null){
	btn = Integer.parseInt(request.getParameter("btn")); 	
    coin =  Integer.parseInt(request.getParameter("coin"));
    if(coin == 0){ answer = "�ո�";}else{ answer="�޸�";}
    if(btn==coin){
    	out.println("�����!");
    }else{
    	out.println("Ʋ�Ǵ�!");
    }
	 coin = rd.nextInt(2);
}else{
	out.println("<h2>������ �ո� �޸��� ���纸����! </h2>");
}


%>


<button onclick="location.href='basic05.jsp?btn=0&coin=<%=coin%>'"> �ո� </button>
<button onclick="location.href='basic05.jsp?btn=1&coin=<%=coin%>'"> �޸� </button>

</body>
</html>
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
String myAcc = "1234";
String yourAcc ="4321";

String account  = request.getParameter("account"); 
int money = Integer.parseInt(request.getParameter("money"));
int myMoney = Integer.parseInt(request.getParameter("myMoney"));
int yourMoney = Integer.parseInt(request.getParameter("yourMoney"));
String result ="";

if(account.equals(yourAcc)) {
		
		if(money <= myMoney) {
			myMoney = myMoney - money;
			yourMoney = yourMoney + money;
			result = yourAcc + "�� "+money +"���� ��ü�� �Ϸ��Ͽ����ϴ�. �����ִ� �ݾ��� " + myMoney + "�� �Դϴ�";
		}else {
			result =yourAcc + "�� �����ܾ��� "+ ( money - myMoney) +"��ŭ  �����մϴ�.";
		}
}else if(account.equals(myAcc)) {
	
	if(money <= yourMoney) {
		yourMoney = yourMoney - money;
		myMoney = myMoney + money;
		result = myAcc +" �� " + money +"���� ��ü�� �Ϸ��Ͽ����ϴ�. �����ִ� �ݾ��� " + yourMoney + "�� �Դϴ�";
	}else {
		result =myAcc + "�� �����ܾ��� "+ ( money - yourMoney) +"��ŭ  �����մϴ�.";
	}
}
%>

<script type="text/javascript">
alert("<%=result%>"); 
location.href="Ex08.jsp";
</script>

</body>
</html>
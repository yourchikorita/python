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

# ATM[1�ܰ�] : ��ü�ϱ�
 1. ��ü�� ���¹�ȣ�� �Է¹޴´�.
 2. ���¹�ȣ�� ��ġ�ϸ�,
 3. ��ü�� �ݾ��� �Է¹޴´�.
 4. ��ü�� �ݾ� <= myMoney	: ��ü����
	myMoney   - ��ü�� �ݾ�
	yourMoney + ��ü�� �ݾ�
	��ü�� �ݾ�  > myMoney 	: ��ü�Ұ�
	
	Ex08Pro.jsp �������� ����ϰ� ��� ���� ���� 
	"���¹�ȣ" �� "�Աݱݾ�" ���� ��ü�� �Ϸ��Ͽ����ϴ�. �����ִ� �ݾ��� "����� "�� �Դϴ� ����ϱ�
 5. ���¹�ȣ�� ���������ʰų� ��ĭ�� �����ÿ� �˶�â ���� 	
 
  myMoney = 8700;
  yourMoney = 12000;
  myAcc = "1234";
  yourAcc ="4321";
</pre>
<%

int myMoney = 8700;
int yourMoney = 12000;

%>
<script>

function checkInput(){
	var myAcc = "1234";
	var yourAcc ="4321";
	
	if(document.f2.account.value!="1234" && document.f2.account.value!="4321"){
		alert('�ش���¹�ȣ�� �������� �ʽ��ϴ�')
		document.f2.account.value="";
		document.f2.account.focus();
		return;
	}
	
	if(document.f2.account.value == ""){
		alert('���¹�ȣ�� �Է��ϼ���');
		document.f2.account.focus();
		return;
	}
	
	if(document.f2.money.value == ""){
		alert('�Ա� �ݾ��� �Է��ϼ���');
		document.f2.money.focus();
		return;
	}
	
	document.f2.submit();
}

</script>

<form name="f2" action="Ex08Pro.jsp">
��ü�� ���¹�ȣ�� �Է��ϼ���. <br><br>
<input type="text" name="account"> <br><br>
��ü�� �ݾ��� �Է��ϼ���. <br><br>
<input type="text" name="money">
<input type="hidden" name="myMoney" value=<%=myMoney %>>
<input type="hidden" name="yourMoney" value=<%=yourMoney %>> <br><br>
<input type="button" onclick="checkInput()" value="��ü"> 
</form>

</body>
</html>
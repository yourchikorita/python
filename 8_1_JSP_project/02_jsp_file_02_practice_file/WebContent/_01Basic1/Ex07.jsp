<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2> </h2>
<pre> 
	���� �ִ밪 ã��
         ���� 
	# �ִ밪 ���ϱ�[2�ܰ�]
	1. ���� �� 3���� �Է��Ѵ�.
	2. �Է¹��� 3���� ���� �� ���� ū ���� ����Ѵ�.
	3. �� ������ ���� â ���� 
</pre>

<script>
function checkInput(){
	if(document.f1.num1.value==""){
		alert('ù��° ���� �Է��ϼ���');
		document.f1.num1.focus();
		return;
	}
	if(document.f1.num2.value==""){
		alert('�ι�° ���� �Է��ϼ���');
		document.f1.num2.focus();
		return;
	}
	if(document.f1.num3.value==""){
		alert('����° ���� �Է��ϼ���');
		document.f1.num3.focus();
		return;
	}
	
	document.f1.submit();
}

</script>

<form name="f1" action="Ex07Pro.jsp"> 
<input type="number" name="num1" >  &nbsp;&nbsp; &nbsp;
 <input type="number" name="num2" > &nbsp;&nbsp; &nbsp;
 <input type="number" name="num3" > &nbsp;&nbsp; &nbsp;
<input type="button" onclick="checkInput()" value="����"> 
</form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
button {
	margin: 5px 0;
	padding: 3em 5em;
	font-size: 13px;
}
</style>
</head>
<body>
<pre>
  # �ִ밪 ���ϱ�[3�ܰ�]
  1. ���� ū ���� ã�� �Է��Ѵ�.
  2. �����̸� �ش� ���� 0���� �����Ѵ�.
  3. arr�迭�� ��� ���� 0���� ����Ǹ� ���α׷��� ����ȴ�.
  ��)
  11, 87, 42, 100, 24
  �Է� : 100
  
  11, 87, 42, 0, 24
  �Է� : 87
  
 11, 0, 42, 0, 24
 
</pre>

<%
int[] arr = {11, 87, 42, 100, 24};
int idx;
if(request.getParameter("idx")!=null){
	idx= Integer.parseInt(request.getParameter("idx"));
	arr = (int[])session.getAttribute("arr");
	int maxIdx=0;
	for(int i =0; i< arr.length;i++){
	  if(arr[maxIdx] < arr[i]){
		  maxIdx = i;
	  }
	}
	if(idx == maxIdx){
		arr[idx] = 0; 
		session.setAttribute("arr", arr);
	}else{
		%>
		<script>
		alert("�ִ밪�� �ƴմϴ� ");
		history.go(-1);
		</script>
		<%
	}
	
}else{
	session.setAttribute("arr", arr);
	
}
out.println("<h2> �ִ� ���� ���Ͻÿ� </h2>");
for(int i =0; i< arr.length;i++){
	if(arr[i]!=0){	
%>
<button onclick="location.href='basic12.jsp?idx=<%=i%>'"> <%=arr[i]%> </button>
<%
	}
}
%>


</body>
</html>
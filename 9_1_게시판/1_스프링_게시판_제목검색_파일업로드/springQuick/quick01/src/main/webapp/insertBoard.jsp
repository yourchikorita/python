<%@page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<h1>글등록</h1>


<form action="insertBoard.do" method="post" enctype="multipart/form-data">
	<table>
		<tr>
			<td>제목</td>
			<td><input type="text" name="title" /></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><input type="text" name="writer" /></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea name="content" cols="40" rows="10"></textarea></td>
			</tr>
		<tr>
			<td>업로드</td>
			<td align="left"><input type="file" name="uploadFile" /></td>
		</tr>
		<tr>
			<td><input type="submit" value="새글등록"/></td>
		</tr>
		<tr>
			<td colspan="2" ><input value="수정" type="submit" /></td>
		</tr>
	</table>
</form>
<a href="getBoardList.jsp" >글목록</a>
</html>
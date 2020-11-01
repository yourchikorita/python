<%@page contentType="text/html; charset=utf-8"%>


<!DOCTYPE html>
<html>
<form action="updateBoard.do" method="post">
	<table>
		<tr>
			<td>제목</td>
			<td><input type="text" name="title" value="${board.title }" /></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td>${board.writer }</td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea name="content">${board.content }</textarea></td>
			</tr>
		<tr>
			<td>등록일</td>
			<td>${board.regDate }</td>
		</tr>
		<tr>
			<td>조회수</td>
			<td>${board.cnt }</td>
		</tr>
		<tr>
			<td colspan="2" ><input value="수정" type="submit" /></td>
		</tr>
		<tr></tr>
	</table>
	<input name="seq" type="hidden" value="${board.seq }" />
</form>


<hr>
<a href="insertBoard.jsp">글등록</a> &nbsp;&nbsp;
<a href="deleteBoard.do?seq=${board.seq}">글삭제</a>&nbsp;&nbsp;
<a href="getBoardList.do">글목록</a>&nbsp;&nbsp;
</html>
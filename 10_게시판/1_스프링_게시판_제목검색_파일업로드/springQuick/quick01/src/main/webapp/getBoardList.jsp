<%@page contentType="text/html; charset=utf-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<a href="logout.do" >로그아웃</a>

<br/>
<h1>게시글 목록</h1>
<h2>${userName}님 환영합니다.</h2>
<!-- 검색 -->
<form action="getBoardList.do" method="post">
	<select name="searchCondition">
		<c:forEach items="${conditionMap}" var="option">
			<option value="${option.value }">${option.key }
			</option>
		</c:forEach>	
	</select>
	<input name="searchKeyword" type="text"/>
	<input type="submit" value="검색하기"/>
</form>

<br/>
<!-- list -->
<table border="1">
	<tr>
		<th> 번호 </th>
		<th> 제목 </th>
		<th> 작성자 </th>
		<th> 등록일</th>
		<th> 조회수</th>
	</tr>
	<c:forEach items="${boardList }" var="board">
	<tr >
		<td>${board.seq }</td>
		<td><a href ="getBoard.do?seq=${board.seq}">${board.title }</a></td>
		<td>${board.writer }</td>
		<td>${board.regDate }</td>
		<td>${board.cnt }</td>
	
	</tr>
</c:forEach>
</table>

<br/>
<a href="insertBoard.jsp">새글 등록</a>

</html>
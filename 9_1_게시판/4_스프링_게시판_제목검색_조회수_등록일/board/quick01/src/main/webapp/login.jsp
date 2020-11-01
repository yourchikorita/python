<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>로그인</title>
<h1>login</h1>
<form action="login.do" method="post">
아이디 <input type="text" name="id" value="${userVO.id}"/> <br/>
비밀번호 <input type="password" name="password"  value="${userVO.password}"/> <br/>
<input type="submit" value="로긴해요"> 
</form>
</html>
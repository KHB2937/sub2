<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>회원가입</title>
</head>
<body>
  <h1>회원가입</h1>
  <form method="post" action="joinAction.jsp">
    <label>이름:</label>
    <input type="text" name="name"><br>
    <label>아이디:</label>
    <input type="text" name="id"><br>
    <label>비밀번호:</label>
    <input type="password" name="password"><br>
    <label>연락처:</label>
    <input type="text" name="phone"><br>
    <label>거주 지역:</label>
    <input type="text" name="location"><br>
    <label>반려견 이름:</label>
    <input type="text" name="dogName"><br>
    <label>반려견 종류:</label>
    <input type="text" name="dogBreed"><br>
    <label>반려견 크기:</label>
    <input type="text" name="dogSize"><br>
    <label>산책 희망 시간대:</label>
    <input type="text" name="walkingTime"><br>
    <button type="submit">회원가입</button>
  </form>
</body>
</html>

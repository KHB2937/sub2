<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.example.model.MemberDAO, org.example.model.MemberVO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>회원가입</title>
</head>
<body>
  <%
    request.setCharacterEncoding("UTF-8");

    String name = request.getParameter("name");
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    String phone = request.getParameter("phone");
    String location = request.getParameter("location");
    String dogName = request.getParameter("dogName");
    String dogBreed = request.getParameter("dogBreed");
    String dogSize = request.getParameter("dogSize");
    String walkingTime = request.getParameter("walkingTime");

    MemberDAO memberDAO = new MemberDAO();
    MemberVO memberVO = new MemberVO();
    memberVO.setName(name);
    memberVO.setUserId(id);
    memberVO.setPassword(password);
    memberVO.setPhone(phone);
    memberVO.setLocation(location);
    memberVO.setDogName(dogName);
    memberVO.setDogBreed(dogBreed);
    memberVO.setDogSize(dogSize);
    memberVO.setWalkingTime(walkingTime);

    memberDAO.insertMember(memberVO);
  %>
  <h2>회원가입이 완료되었습니다.</h2>
  <a href="login.jsp">로그인 페이지로 이동하기</a>
</body>
</html>

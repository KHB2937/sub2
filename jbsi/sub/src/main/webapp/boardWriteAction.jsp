<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.example.model.BoardDAO, org.example.model.BoardVO" %>
<!DOCTYPE html>
<html>
<head>
  <title>게시글 작성</title>
</head>
<body>
  <%
    request.setCharacterEncoding("UTF-8");

    String title = request.getParameter("title");
    String writer = request.getParameter("writer");
    String content = request.getParameter("content");

    BoardDAO boardDAO = new BoardDAO();
    BoardVO boardVO = new BoardVO();
    boardVO.setTitle(title);
    boardVO.setWriter(writer);
    boardVO.setContent(content);

    boardDAO.insertBoard(boardVO);
  %>
  <h2>게시글이 작성되었습니다.</h2>
  <a href="boardList.jsp">게시글 목록 페이지로 이동하기</a>
</body>
</html>

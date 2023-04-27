<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.example.model.BoardDAO, org.example.model.BoardVO, org.example.model.ReplyDAO, org.example.model.ReplyVO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>게시글 보기</title>
</head>
<body>
  <%
    request.setCharacterEncoding("UTF-8");

    int id = Integer.parseInt(request.getParameter("id"));

    BoardDAO boardDAO = new BoardDAO();
    BoardVO boardVO = boardDAO.getBoardById(id);
    boardDAO.increaseHit(id);

    ReplyDAO replyDAO = new ReplyDAO();
    List<ReplyVO> replyList = replyDAO.getReplyListByBoardId(id);
  %>
  <h1>${boardVO.title}</h1>
  <p>작성자: ${boardVO.writer}</p>
  <p>작성일: ${boardVO.regdate}</p>
  <p>조회수: ${boardVO.hit}</p>
  <p>${boardVO.content}</p>
  <hr>
  <h2>댓글</h2>
  <table>
    <thead>
      <tr>
        <th>작성자</th>
        <th>내용</th>
        <th>작성일</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="reply" items="${replyList}">
        <tr>
          <td>${reply.writer}</td>
          <td>${reply.content}</td>
          <td>${reply.regdate}</td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
  <form method="post" action="replyWriteAction.jsp">
    <input type="hidden" name="boardId" value="${boardVO.id}">
    <label>작성자:</label>
    <input type="text" name="writer"><br>
    <label>내용:</label>
    <textarea name="content"></textarea><br>
    <button type="submit">댓글 작성</button>
  </form>
  <a href="boardList.jsp">목록으로</a>
</body>
</html>

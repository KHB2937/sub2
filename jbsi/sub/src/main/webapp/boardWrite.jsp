<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>글쓰기</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
		<a class="navbar-brand" href="#">게시판</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="boardWrite.jsp">글쓰기</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="boardList.jsp">글목록</a>
				</li>
			</ul>
		</div>
	</nav>

	<div class="container mt-4">
		<h2>글쓰기</h2>
		<form method="post" action="boardWriteAction.jsp">
			<div class="form-group">
				<label for="title">제목:</label>
				<input type="text" class="form-control" id="title" placeholder="제목을 입력하세요" name="title" required>
			</div>
			<div class="form-group">
				<label for="content">내용:</label>
				<textarea class="form-control" id="content" placeholder="내용을 입력하세요" name="content" rows="5" required></textarea>
			</div>
			<button type="submit" class="btn btn-primary">글쓰기</button>
		</form>
	</div>
</body>
</html>

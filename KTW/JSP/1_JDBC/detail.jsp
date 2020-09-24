<%@page import="kosta.jdbc.Board"%>
<%@page import="kosta.jdbc.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	int seq = 1;
	if(request.getParameter("seq") != null) {
		seq = Integer.parseInt(request.getParameter("seq"));
		
	}
	
	BoardDAO dao = BoardDAO.getInstance();
	Board board = dao.detailBoard(seq);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="list.jsp">글목록</a>
	<table border="1">
		<tr>
			<td>글번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>내용</td>
			<td>작성일자</td>
			<td>조회수</td>
		</tr>
		<tr>
			<td><%= board.getSeq() %></td>
			<td><%= board.getTitle() %></td>
			<td><%= board.getWriter() %></td>
			<td><%= board.getContents() %></td>
			<td><%= board.getRegdate() %></td>
			<td><%= board.getHitcount() %></td>
		</tr>
	</table>
	<br>
	<a href="updateForm.jsp?seq=<%= board.getSeq() %>">글수정</a>
	<a href="delete.jsp?seq=<%= board.getSeq() %>">글삭제</a>
</body>
</html>
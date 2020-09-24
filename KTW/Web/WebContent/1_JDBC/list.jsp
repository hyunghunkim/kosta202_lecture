<%@page import="java.util.List"%>
<%@page import="kosta.jdbc.Board" %>
<%@page import="kosta.jdbc.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	BoardDAO dao = BoardDAO.getInstance();
	List<Board> list = dao.listBoard();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="insertForm.jsp">글쓰기</a>
	<table border="1">
		<tr>
			<td>글번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>작성일자</td>
			<td>조회수</td>
		</tr>
		<%
			for(int i=0; i<list.size(); i++) {
				Board board = list.get(i);
		%>
				<tr>
					<td><%= board.getSeq() %></td>
					<td><a href="detail.jsp?seq=<%= board.getSeq() %>"><%= board.getTitle() %></a></td>
					<td><%= board.getWriter() %></td>
					<td><%= board.getRegdate() %></td>
					<td><%= board.getHitcount() %></td>
				</tr>
		<%
			}
		%>
	</table>
</body>
</html>
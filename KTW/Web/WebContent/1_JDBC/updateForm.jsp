<%@page import="kosta.jdbc.Board"%>
<%@page import="kosta.jdbc.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String n = request.getParameter("seq");
	int seq = 1;
	if(n != null) {
		seq = Integer.parseInt(n);
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
	<h3>글수정폼</h3>
	<form action="updateProc.jsp" method="post">
		<input type="hidden" name="seq" value="<%= board.getSeq() %>">
		글번호 : <%= board.getSeq() %><br>
		제목 : <input type="text" name="title" value="<%= board.getTitle() %>"><br>
		작성자 : <%= board.getWriter() %><br>
		내용<br>
		<textarea rows="6" cols="70" name="contents"><%= board.getContents() %></textarea>
		<br>
		<input type="submit" value="수정">
	</form>
</body>
</html>
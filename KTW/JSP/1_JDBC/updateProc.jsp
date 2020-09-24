<%@page import="kosta.jdbc.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="board" class="kosta.jdbc.Board" />
<jsp:setProperty property="*" name="board" />

<%
	BoardDAO dao = BoardDAO.getInstance();
	int re = dao.updateBoard(board);
	
	if(re == 1) {
		response.sendRedirect("list.jsp");
	}
	else {
		out.println("DAO 실패");
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
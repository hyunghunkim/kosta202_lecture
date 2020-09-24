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
	int re = dao.deleteBoard(seq);
	
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
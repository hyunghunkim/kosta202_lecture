<%@page import="kosta.jdbc.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");	// form에서 넘어오는 한글 데이터에 대한 인코딩
%>

<%-- 액션 태그 --%>
<jsp:useBean id="board" class="kosta.jdbc.Board" />		<%-- Board 객체 생성 --%>
<jsp:setProperty property="*" name="board" />	<%-- jsp:setProperty는 board.setTitle()과 동일한 기능을 하고, 
													property 속성에 *를 사용하면 form에서 넘어오는 데이터의 개수에 상관없이 한 번에
													객체화 시킬 수 있다. 하지만 이게 가능하려면 자바 객체의 멤버변수명과 form의 name값이 같아야 한다. --%>
<%
	BoardDAO dao = BoardDAO.getInstance();
	int re = dao.insertBoard(board);
	
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
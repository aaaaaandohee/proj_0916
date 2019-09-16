<%@page import="vo.UsersVO"%>
<%@page import="dao.UsersDAO"%>
<%@page import="service.UsersServiceImpl"%>
<%@page import="service.UsersService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
</head>
<body>
<h3>login 처리</h3>


<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	UsersDAO dao = new UsersDAO();
	UsersService service = new UsersServiceImpl(dao);
	
	UsersVO vo = new UsersVO();
	vo.setId(id);
	vo.setPassword(pw);
	
	UsersVO data = service.loginUsers(vo);

%>


로그인 정보 : <%= data %>

<p>
<a href="index.html">첫 화면으로</a><br>
<a href="main.html">메인으로</a>

</p>
</body>
</html>
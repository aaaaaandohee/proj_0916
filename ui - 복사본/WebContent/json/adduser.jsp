<%@page import="vo.UsersVO"%>
<%@page import="service.UsersServiceImpl"%>
<%@page import="service.UsersService"%>
<%@page import="dao.UsersDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adduser.jsp</title>
</head>
<body>
<h3>회원가입 처리</h3>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String role = request.getParameter("role");
	
	UsersDAO dao = new UsersDAO();
	UsersService service = new UsersServiceImpl(dao);
	
	UsersVO vo = new UsersVO();
	vo.setId(id);
	vo.setName(name);
	vo.setPassword(pw);
	vo.setRole(role);
	
	int c = service.insertUsers(vo);


%>

입력정보 : <%= id %> / <%= pw %> / <%= name %> / <%= role %><br>

<%
	if(c==0) {
%>
		<h4>회원가입 실패</h4>
<%
	} 
%>

<a href="index.html">첫 화면으로</a><br>
<a href="main.html">메인으로</a>
</body>
</html>
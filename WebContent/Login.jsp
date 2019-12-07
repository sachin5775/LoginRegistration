<%@page import="com.DAO.DAOImpl"%>
<%@page import="com.services.DAOProvider"%>
<%@page import="java.util.Set"%>
<%@page import="com.pojo.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String Username = request.getParameter("username");
	String Password = request.getParameter("password");
	User u = new User();
	u.setUserName(Username);
	u.setPassword(Password);
	DAOProvider imp = new DAOImpl();
	int status = imp.LoginUser(u);
	if(status == 1){
		response.sendRedirect("Success.jsp");
	}
	else{
		response.sendRedirect("Fail.jsp");
	}
	
%>
</body>
</html>
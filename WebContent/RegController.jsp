<%@page import="com.DAO.DAOImpl"%>
<%@page import="com.services.DAOProvider"%>
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
	String firstName = request.getParameter("firstname");
	String lastName = request.getParameter("lastname");
	String userName = request.getParameter("username");
	String password = request.getParameter("password");
	String contactNumber = request.getParameter("contactNumber");
	System.out.println(firstName+"\n"+lastName+"\n"+userName+"\n"+password+"\n"+contactNumber);
	User u = new User();
	u.setFirstName(firstName);
	u.setLastName(lastName);
	u.setUserName(userName);
	u.setPassword(password);
	u.setContactNumber(contactNumber);
	
	DAOProvider imp = new DAOImpl();
	boolean status = imp.RegistrationUser(u);
	if(status == true) {
		response.sendRedirect("RegSuccess.jsp");
	}
	else
		response.sendRedirect("RegFail.jsp");
	
%>
</body>
</html>
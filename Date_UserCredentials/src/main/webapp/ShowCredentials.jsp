<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Credentials and Date</title>
</head>
<body>
	<jsp:useBean id="date" class="java.util.Date" />
	<p>
		The date/time is
		<%= date %>
		<jsp:useBean id="users" class="com.jsp.javabean.UserCredentials">
			<jsp:setProperty name="users" property="userName" value="Ingit" />
			<jsp:setProperty name="users" property="password"
				value="password@123" />

		</jsp:useBean>
	<p>
		User Name:
		<jsp:getProperty name="users" property="userName" />
	</p>

	<p>
		Password:
		<jsp:getProperty name="users" property="password" />
	</p>

</body>
</html>
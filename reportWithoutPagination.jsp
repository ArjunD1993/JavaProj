<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="com.javaworkspace.pagination.dto.StudentDetailsDTO"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DisplayTag Tutorial</title>
</head>
<body>

<h1>Without Display Tag</h1>

<%
	List list = (List) session.getAttribute("studentDetails");
%>

<table border="1">
	<tr>
		<td>Student Name</td>
		<td>Father Name</td>
		<td>Age</td>
		<td>Country</td>
	</tr>
	<%
		for (int i = 0; i < list.size(); i++) {
	%>
	<tr>
		<%
			StudentDetailsDTO studentDetailsDTO = (StudentDetailsDTO) list
						.get(i);
				out.println("<td>" + studentDetailsDTO.getStudentName()
						+ "</td>");
				out.println("<td>" + studentDetailsDTO.getFatherName()
						+ "</td>");
				out.println("<td>" + studentDetailsDTO.getAge() + "</td>");
				out.println("<td>" + studentDetailsDTO.getCountry() + "</td>");
		%>
	</tr>
	<%
		}
	%>
</table>

</body>
</html>
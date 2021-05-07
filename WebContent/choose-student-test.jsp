<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*,com.flash.jsp.tagdemo.Student" %>
<%
  //just create some sample data
	List<Student> data=new ArrayList<>();
	data.add(new Student("Anuj","Yadav",true));
	data.add(new Student("Anany","Dwivedi",false));
	data.add(new Student("Anubhav","Mishra",true));
	data.add(new Student("Anshika","Gupta",false));
	data.add(new Student("Prajjwal","Gupta",true));
	pageContext.setAttribute("myStudent", data);
%>

<html>
<head>
	<title>JSP Core STL IF With Student Class</title>
</head>
<body>
<table border="1">
	<tr>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Gold Customer</th>
	</tr>

<c:forEach var="tempStydent" items="${myStudent}">
	<tr>
		<td>${tempStydent.firstName }</td> 
		<td>${tempStydent.lastName }</td> 
		<td> <%-- ${tempStydent.goldCustomer } --%>
			<c:if test="${tempStydent.goldCustomer }">
			Special discount
			</c:if>
			<c:if test="${not tempStydent.goldCustomer }">
			-
			</c:if>
		</td>
	<tr>
</c:forEach>
</table>
</body>
</html>
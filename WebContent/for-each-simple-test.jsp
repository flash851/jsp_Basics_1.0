<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
  //just create some sample data
	String[] cities={"Mumbai","Singpore"};
	pageContext.setAttribute("myCities", cities);
%>

<html>
<head>
	<title>JSP Core STL ForEach</title>
</head>
<body>
<c:forEach var="tempCity" items="${myCities}">
${tempCity }<br>
</c:forEach>
 
</body>
</html>
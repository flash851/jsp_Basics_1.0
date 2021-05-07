<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
<head>
	<title>JSP FUNCTION STL with join and split</title>
</head>
<body>
	<c:set var="data" value="flash,Anuj,Kanpu,Shivani,India"/>
	<h3>Split Demo</h3>
	<c:set var="citiesArray" value="${fn:split(data,',')}"/>
	<c:forEach var="c"  items="${citiesArray}">
	${c }<br>
	</c:forEach>
	<h3>join Demo</h3>
	<c:set var="fun" value="${fn:join(citiesArray,'*')}"/>
	Results of Joining: ${fun }
</body>
</html>
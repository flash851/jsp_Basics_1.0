<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
<head>
	<title>JSP FUNCTION STL length,toUpperCase and startsWith </title>
</head>
<body>
	<c:set var="data" value="flash"/>
	Length of the String <b>${data}</b>: ${fn:length(data)}
	<br><br>
	Uppercase version of the string <b>${data}</b>: ${fn:toUpperCase(data)}
	<br><br>
	Does the String <b>${data}</b> starts with <b>fla</b>: ${fn:startsWith(data,"fla")}
</body>
</html>
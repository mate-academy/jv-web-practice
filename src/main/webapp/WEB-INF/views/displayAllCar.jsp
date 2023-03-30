<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>DISPLAY ALL CAR</title>
</head>
<body>
<table>
	<tr>
		<td>ID</td>
		<td>MODEL</td>
	</tr>
	<c:forEach items="${car}" var="cars">
		<tr>
			<td><c:out value="${cars.id}"/></td>
			<td><c:out value="${cars.model}"/></td>
			<td><a href="${pageContext.request.contextPath}/cars/all/delete?id=${cars.id}">delete this
				car</a></td>
		</tr>
	</c:forEach>
</table>
</body>
</html>

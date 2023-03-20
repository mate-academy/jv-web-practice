<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>DISPLAY ALL DRIVER</title>
</head>
<body>
<h1>ALL DRIVERS</h1>
<table>
	<tr>
		<td>ID</td>
		<td>NAME</td>
		<td>LICENSE DRIVER</td>
	</tr>
	<c:forEach items="${allDrivers}" var="all">
		<tr>
			<td><c:out value="${all.id}"/></td>
			<td><c:out value="${all.name}"/></td>
			<td><c:out value="${all.licenseNumber}"/></td>
			<td><a href="${pageContext.request.contextPath}/registration/drivers/all/delete?id=${all.id}">delete
				this driver</a></td>
		</tr>
	</c:forEach>
</table>
</body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>ALL MANUFACTURER</title>
</head>
<body>
<h1>ALL MANUFACTURER</h1>
<table>
	<tr>
		<td style="color: brown">ID</td>
		<td>NAME</td>
		<td>COUNTRY</td>
	</tr>
	<c:forEach items="${allManufacturer}" var="all">
		<tr>
			<td><c:out value="${all.id}"/></td>
			<td><c:out value="${all.name}"/></td>
			<td><c:out value="${all.country}"/></td>
			<td>
				<a href="${pageContext.request.contextPath}/registration/manufacturers/all/delete?id=${all.id}">delete
					this driver</a></td>
		</tr>
	</c:forEach>
</table>
</body>
</html>

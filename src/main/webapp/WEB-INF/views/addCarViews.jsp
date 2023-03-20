<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>ADD CAR</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/registration/cars/add">
	<h1 style="text-align: center">ADD CAR</h1>
	<table>
		MODEL<input type="text" name="model_1">
		NAME MANUFACTURER <input type="text" name="name">
		COUNTRY <input type="text" name="country">
		<button type="submit">ADD</button>
		<br>
		<br>
		<br>
		<h1 style="text-align: center">ADD A CAR WITH A MANUFACTURER</h1>
		<br>
		SELECT ID <input type="text" name="id">
		WRITE MODEL <input type="text" name="model_2">
		<button type="submit">ADD</button>
		<br>
		<tr>
			<td>ID</td>
			<td>NAME</td>
			<td>COUNTRY</td>
		</tr>
		<br>
		<c:forEach items="${allManufacturer}" var="all">
			<tr>
				<td><c:out value="${all.id}"/></td>
				<td><c:out value="${all.name}"/></td>
				<td><c:out value="${all.country}"/></td>
			</tr>
		</c:forEach>
	</table>
</form>
</body>
</html>

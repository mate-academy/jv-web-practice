<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Get all cars</title>
</head>
<body>
	<h1>List of Cars:</h1>
	<table>
		<tr style="font-weight: bold">
			<td>Id</td>
			<td>Model</td>
			<td>Manufacturer Name</td>
			<td>Country</td>
			<td width="150">Drivers</td>
			<td>Delete Car</td>
		</tr>
		<c:forEach items="${cars}" var="car">
			<tr>
				<td><c:out value="${car.id}" /></td>
				<td><c:out value="${car.model}" /></td>
				<td><c:out value="${car.manufacturer.name}" /></td>
				<td><c:out value="${car.manufacturer.country}" /></td>
				<td><c:forEach items="${car.drivers}" var="driver">
						<c:out value="${driver.id}: ${driver.name}" /> <br>
					</c:forEach></td>
				<td><a
					href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
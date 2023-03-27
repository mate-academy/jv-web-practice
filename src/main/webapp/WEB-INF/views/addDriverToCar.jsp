<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>DRIVER TO CAR</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/plus">
	<h1 style="text-align: center; background-color:#125004">PLEASE ADD DRIVER TO CAR</h1>
	<table table border="1" width="50%" cellpadding="5">
		<tr>
			<th>DRIVER<input type="text" name="id_car"></th>
			<th>CAR<input type="text" name="id_driver"></th>
			<th>
				<button type="submit">ADD</button>
			</th>
		</tr>
		<tr>
			<td>
				<c:forEach items="${driver}" var="drivers">
					<c:out value="${drivers.id}"/>
					<c:out value="${drivers.name}"/>
					<c:out value="${drivers.licenseNumber}"/><br>
				</c:forEach>
			</td>
			<td>
				<c:forEach items="${car}" var="cars">
					<c:out value="${cars.id}"/>
					<c:out value="${cars.model}"/><br>
				</c:forEach>
			</td>
		</tr>
	</table>
</form>
</body>
</html>

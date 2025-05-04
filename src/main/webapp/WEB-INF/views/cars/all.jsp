<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Get all manufacturers</title>
</head>
<body>
<h1>List of cars:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER NAME</td>
        <td>MANUFACTURER COUNTRY</td>
        <td>DRIVER NAME</td>
        <td>DRIVER LICENSE NUMBER</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
        <td><c:out value="${car.id}" /></td>
        <td><c:out value="${car.model}" /></td>
        <td><c:out value="${car.manufacturer.name}" /></td>
        <td><c:out value="${car.manufacturer.country}" /></td>
        <c:forEach items="${car.drivers}" var="driver" >
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
        </c:forEach>
        <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car</a></td>
        </tr>
    </c:forEach>
</table>
<form>
    <button type="submit" formaction="/index">Home</button>
</form>
</body>
</html>

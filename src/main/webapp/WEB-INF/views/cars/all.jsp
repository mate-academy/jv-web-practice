<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head> <title> All Cars </title> </head>
<body>
<h1> Cars list </h1>
<table>
    <tr>
        <td>ID</td>
        <td>Model</td>
        <td>Manufacturer</td>
        <td>Driver</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${cars}" var = "car">
        <tr>
            <td><c:out value = "${car.id}"/></td>
            <td><c:out value = "${car.model}"/></td>
            <td><c:out value = "${car.manufacturer.getName()}"/></td>
            <d:forEach items="${car.drivers}" var = "driver">
                <td><d:out value = "${driver.name}"/><br></td>
            </d:forEach>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit car list</title>
</head>
<body>
<h2><a href="/index">Back to home page</a></h2>
<br>
<br>
<h3>All active cars:</h3>
<br>

<table>
    <tr>
        <th>Delete this car</th>
        <th>ID</th>
        <th>Model</th>
        <th>Manufacturer</th>
        <th>Drivers</th>

    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><a href="/cars/delete?id=${car.id}">Delete this car</a></td>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
                    <c:forEach items="${car.drivers}" var="driver">
                        <td>Driver ID: <c:out value="${driver.id}" /> || Name: <c:out value="${driver.name}" /> </td>
                    </c:forEach>

        </tr>
    </c:forEach>
</table>

</body>
</html>

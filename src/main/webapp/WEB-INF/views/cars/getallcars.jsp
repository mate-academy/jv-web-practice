<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all Drivers</title>
</head>
<body>
<h1> List of Cars: </h1>
<table>
    <tr>
        <td>CAR ID</td>
        <td></td>
        <td>CAR MODEL</td>
        <td></td>
        <td>MANUFACTURER NAME</td>
        <td></td>
        <td>MANUFACTURER COUNTRY</td>
        <td></td>
        <td>DRIVER LIST</td>
        <td></td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${cars}" var ="car">
        <tr>
            <td><c:out value = "${car.getId()}" /></td>
            <td></td>
            <td><c:out value = "${car.getModel()}" /></td>
            <td></td>
            <td><c:out value = "${car.getManufacturer().getName()}" /></td>
            <td></td>
            <td><c:out value = "${car.getManufacturer().getCountry()}" /></td>
            <td></td>
            <td><c:out value="${car.getDrivers()}" /></td>
            <td></td>
            <td><form method="get"
                      action ="${pageContext.request.contextPath}/cars/delete">
                <button type="submit" name="id" value="${car.getId()}">
                    Delete this car
                </button>
            </form>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>List of cars</title>
</head>
<body>
<h1>List of cars:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>DRIVERS</td>
        <td>DELETE<br>CAR</td>
        <td>ADD DRIVER</td>
        <td></td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td><c:forEach items="${car.drivers}" var="driver">
                    <c:out value="${driver.name}" /><br>
                </c:forEach>
            </td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?car_id=${car.id}">delete this car</a> </td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add?car_id=${car.id}">
                    <select id="driver_id" name="driver_id">
                        <c:forEach items="${drivers}" var="driver">
                            <option value="${driver.id}">${driver.name}</option>
                        </c:forEach>
                    </select>
                    <button type="submit">Add</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/cars/add">Add new car</a>
<a href="${pageContext.request.contextPath}/index">Back</a>
</body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>All drivers</title>
</head>

<body>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver_ID: <input type="text" name="driver_id"/> <br/>
    Car_ID: <input type="text" name="car_id"/> <br/>
    <input type="submit" value="Add Driver"/>

</form>

<table border="1">
    <caption>All drivers</caption>
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>LICENSE NUMBER</th>
    </tr>
    <c:forEach items="${list_drivers}" var="driver">
        <tr>
            <th><c:out value="${driver.id}"/></th>
            <th><c:out value="${driver.name}"/></th>
            <th><c:out value="${driver.licenseNumber}"/></th>
        </tr>
    </c:forEach>
</table>
<br>

<table border="1">
    <caption>All cars</caption>
    <tr>
        <th>ID</th>
        <th>MODEL</th>
    </tr>
    <c:forEach items="${list_cars}" var="car">
        <tr>
            <th><c:out value="${car.id}"/></th>
            <th><c:out value="${car.model}"/></th>
        </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/index">Back to main menu</a>
</body>
</html>

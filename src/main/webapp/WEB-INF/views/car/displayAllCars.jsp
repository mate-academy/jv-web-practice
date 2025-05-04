<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Displaying all cars</title>
</head>
<body>
<h1>
    List of cars:
</h1>
<table>
    <tr>
        <td style="border: solid black 1px">
            <b>CAR ID</b>
        </td>
        <td style="border: solid black 1px">
            <b> CAR MODEL</b>
        </td>
        <td style="border: solid black 1px">
            <b>MANUFACTURER NAME</b>
        </td>
        <td style="border: solid black 1px">
            <b>DRIVERS</b>
        </td>
        <td style="border: solid black 1px">
            ACTION
        </td>
    </tr>
    <jsp:useBean id="cars" scope="request" type="java.util.List"/>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td style="border: solid black 1px">
                <c:out value="${car.id}"/>
            </td>
            <td style="border: solid black 1px">
                <c:out value="${car.model}"/>
            </td>
            <td style="border: solid black 1px">
                <c:out value="${car.manufacturer.name}"/>
            </td>
            <td style="border: solid black 1px">
                <c:forEach items="${car.drivers}" var="driver">
                    <c:out value="${driver.name} - ${driver.licenseNumber}"/><br>
                </c:forEach>
            </td>
            <td style="border: solid black 1px">
                <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
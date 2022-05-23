<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<span style="font-family: monospace; color: #000000; "><h1>List of cars:</h1>

        <table>
            <tr>
                <td><div style="text-align: center;">ID</div></td>
                <td><div style="text-align: center;">Model</div></td>
                <td><div style="text-align: center;">Manufacturer's Name</div></td>
                <td><div style="text-align: center;">Manufacturer's Country</div></td>
                <td><div style="text-align: center;">Driver's ID</div></td>
                <td><div style="text-align: center;">Driver's Name</div></td>
                <td><div style="text-align: center;">Driver's License Number</div></td>
                <td><div style="text-align: center;">DELETE CAR</div></td>
            </tr>
            <c:forEach items="${cars}" var="car">
                <tr>
                    <td><div style="text-align: center;"><c:out value="${car.id}" /></div></td>
                    <td><div style="text-align: center;"><c:out value="${car.model}" /></div></td>
                    <td><div style="text-align: center;"><c:out value="${car.manufacturer.name}" /></div></td>
                    <td><div style="text-align: center;"><c:out value="${car.manufacturer.country}" /></div></td>
                    <c:forEach items="${car.drivers}" var="driver">
                        <td><div style="text-align: center;"><c:out value="${driver.id}" /></div></td>
                        <td><div style="text-align: center;"><c:out value="${driver.name}" /></div></td>
                        <td><div style="text-align: center;"><c:out value="${driver.licenseNumber}" /></div></td>
                    </c:forEach>
                    <td><div style="text-align: center;"><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                        <span style="font-family: monospace; color: #000000; ">delete</span></a></div></td>
            </c:forEach>
        </table>
    </span>
</body>
</html>
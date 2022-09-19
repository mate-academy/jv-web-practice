<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<h1>All cars</h1>
<table>
    <tr>
        <td>CAR ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER ID</td>
        <td>MANUFACTURER NAME</td>
        <td>DRIVER NAME</td>
        <td>DRIVER LICENSE NUMBER</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.id}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td><table>
                <c:forEach items="${car.drivers}" var="driver">
                    <tr>
                        <td><c:out value="${driver.name}"/></td>
                    </tr>
                </c:forEach>
            </table>
            </td>
            <td><table>
                <c:forEach items="${car.drivers}" var="driver">
                    <tr>
                        <td><c:out value="${driver.licenseNumber}"/></td>
                    </tr>
                </c:forEach>
        </table>
            </td>
        </tr>
    </c:forEach>
</table>
<h2>All drivers</h2>
<table>
    <tr>
        <td>DRIVER ID</td>
        <td>DRIVER NAME</td>
        <td>DRIVER LICENSE NUMBER</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
    <tr>
        <td><c:out value="${driver.id}" /></td>
        <td><c:out value="${driver.name}" /></td>
        <td><c:out value="${driver.licenseNumber}" /></td>
    </tr>
    </c:forEach>
</table>
<h3>Select driver and car id</h3>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car id <input type="number" name="cars_id"><br>
    Driver id <input type="number" name="drivers_id"><br>
    <button type="submit">Confirm</button>
</form>
<td><a href="${pageContext.request.contextPath}/">back to menu</a></td>
</body>
</html>
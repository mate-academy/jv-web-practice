<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h2>Drivers</h2>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE NUMBER</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
        </tr>
    </c:forEach>
</table>

<h2>Cars</h2>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>DRIVERS</td>
    </tr>
    <d:forEach items="${cars}" var="car">
        <tr>
            <td><d:out value="${car.id}" /></td>
            <td><d:out value="${car.model}" /></td>
            <td><d:out value="${car.manufacturer.name} - ${car.manufacturer.country}" /></td>
            <td>
                <table>
                    <j:forEach items="${car.drivers}" var="driver">
                        <tr>
                            <td><j:out value="${driver.name} - ${driver.licenseNumber}" /></td>
                        </tr>
                    </j:forEach>
                </table>
            </td>
        </tr>
    </d:forEach>
</table>

<h1>Add driver</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Car ID <input type="number" name="car_id"><br>
  Driver ID <input type="number" name="driver_id"><br>
  <button type="submit">Add driver</button>
</form>

<h1>Remove driver</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/remove">
    Car ID <input type="number" name="car_id"><br>
    Driver ID <input type="number" name="driver_id"><br>
    <button type="submit">Remove driver</button>
</form>
</body>
</html>

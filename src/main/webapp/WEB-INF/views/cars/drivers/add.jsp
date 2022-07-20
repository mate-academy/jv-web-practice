<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<h1>List of gash cars:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.getName()}"/></td>
        </tr>
    </c:forEach>
</table>

<h1>List of gash drivers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
        </tr>
    </c:forEach>
</table>

<table>
    <tr>
        <td></td>
    </tr>
</table>

<h1>Wanna add a driver to a car?</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Enter car id : <input type="number" name="car_id">
    Enter driver id: <input type="number" name="driver_id">
    <button type="submit">Add driver to car!</button>
</form>

<body>

</body>
</html>

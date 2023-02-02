<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h1>All cars</h1>
<table>
    <tr>
        <th>Car ID</th>
        <th>Car model</td>
        <th>Manufacturer name</th>
        <th>Manufacturer country</th>
        <th>Driver list</th>
    </tr>
    <c:forEach items="${cars}" var ="car">
        <tr>
            <td><c:out value = "${car.getId()}"/></td>
            <td><c:out value = "${car.getModel()}"/></td>
            <td><c:out value = "${car.getManufacturer().getName()}"/></td>
            <td><c:out value = "${car.getManufacturer().getCountry()}"/></td>
            <td><c:out value="${car.getDrivers()}"/></td>
            <td><form method="get"
                      action ="${pageContext.request.contextPath}/cars/delete">
                <button type="submit" name="id" value="${car.getId()}">
                    Delete
                </button>
            </form>
            </td>
            <td><form method="get"
                      action ="${pageContext.request.contextPath}/cars/drivers/add">
                <button type="submit">
                    Add driver
                </button>
            </form>
            </td>
        </tr>
    </c:forEach>
</table>
<form method="get"
      action ="${pageContext.request.contextPath}/home">
    <button type="submit">
        Home
    </button>
</form>
<form method="get"
      action ="${pageContext.request.contextPath}/cars/add">
    <button type="submit">
        Add new car
    </button>
</form>
</body>
</html>

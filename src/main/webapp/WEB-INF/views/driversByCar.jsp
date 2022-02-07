<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers by Car"</title>
    <script type="text/javascript">
        function deleteDriver(id) {
            alert("Driver #" + id + " was deleted from car")
        }
    </script>
    <script type="text/javascript">
        function addDriver(id) {
            alert("Driver #" + id + " was added to car")
        }
    </script>
</head>
<body>
<h1>Drivers by selected car</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENCE NUMBER</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.getId()}" /></td>
            <td><c:out value="${driver.getName()}" /></td>
            <td><c:out value="${driver.getLicenseNumber()}" /></td>
            <td><a href="${pageContext.request.contextPath}/cars/drivers/delete?driver_id=${driver.getId()}">
                <button onclick="deleteDriver(${driver.getId()})">Delete from car</button>
            </a></td>
        </tr>
    </c:forEach>
</table>
<h1>Other drivers</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENCE NUMBER</td>
    </tr>
    <c:forEach items="${other_drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.getId()}" /></td>
            <td><c:out value="${driver.getName()}" /></td>
            <td><c:out value="${driver.getLicenseNumber()}" /></td>
            <td><a href="${pageContext.request.contextPath}/cars/drivers/add?driver_id=${driver.getId()}">
                <button onclick="addDriver(${driver.getId()})">Add to car</button>
            </a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

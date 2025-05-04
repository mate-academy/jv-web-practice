<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
    <script type="text/javascript">
        function deleteCar(id) {
            alert("Car #" + id + " was deleted")
        }
    </script>
</head>
<body>
<h1>List of manufacturers</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>DRIVERS</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.getId()}" /></td>
            <td><c:out value="${car.getModel()}" /></td>
            <td><c:out value="${car.getManufacturer().getName()}" /></td>
            <td><a href="${pageContext.request.contextPath}/cars/drivers?car_id=${car.getId()}">
                <button>Show Drivers</button>
            </a></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?car_id=${car.getId()}">
                <button onclick="deleteCar(${car.getId()})">Delete Car</button>
            </a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

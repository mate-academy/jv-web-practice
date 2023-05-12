<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Car</title>
</head>
<body>
<form method = "post" action="${pageContext.request.contextPath}/cars/add">
    Model : <input type="text" name="model"><br>
    Manufacturer ID : <select name="manufacturerId"><br>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <option value="${manufacturer.id}">
            <c:out value="${manufacturer.name}"/>
            <c:out value="${manufacturer.country}"/>
        </option>
    </c:forEach>
</select>
    <button type="submit">Add</button>
    <h3>List of cars</h3>
    <table>
        <tr>
            <td>ID</td>
            <td>Model</td>
            <td>Manufacturer</td>
        </tr>
        <c:forEach items="${cars}" var="car">
            <tr>
                <td><c:out value="${car.id}" /></td>
                <td><c:out value="${car.model}" /></td>
                <td><c:out value="${car.manufacturer.name}" /></td>
                <td><a href="${pageContext.request.contextPath}/cars/drivers/add?car_id=${car.id}">
                    <input type="button" value="Assign drivers" />
                </a></td>
                <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                    <input type="button" value="DELETE"></a></td>
            </tr>
        </c:forEach>
    </table><br>
</form>
</body>
</html>
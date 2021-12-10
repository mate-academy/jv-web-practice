<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <table>
        <tr>
            <td>Select car :</td>
            <td><select name="carId">
                <c:forEach items="${cars}" var="car">
                    <option value="${car.id}">
                            ${car.model}
                    </option>
                </c:forEach>
            </select>
            </td>
        </tr>
        <tr>
            <td>Select driver :</td>
            <td><select name="driverId">
                <c:forEach items="${drivers}" var="driver">
                    <option value="${driver.id}">
                            ${driver.name}
                    </option>
                </c:forEach>
            </select>
            </td>
        </tr>
        <tr>
            <td><button type="submit">Add driver to car</button></td>
        </tr>
    </table>
</form>
</body>
</html>

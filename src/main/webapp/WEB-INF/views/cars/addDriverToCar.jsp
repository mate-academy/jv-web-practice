<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/index.jsp" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h3>Add driver to car</h3>
<table>
    <tr>
        <td><b>All cars</b></td><td><b>All drivers</b></td>
    </tr>
    <tr>
        <td style="vertical-align: top">
            <ul>
            <c:forEach items="${cars}" var="car">
                <li>ID:<c:out value="${car.id} ${car.model}" /></li>
            </c:forEach>
            </ul>
        </td>
        <td style="vertical-align: top">
            <ul>
                <c:forEach items="${drivers}" var="driver">
                    <li>ID: <c:out value="${driver.id} ${driver.name}" /></li>
                </c:forEach>
            </ul>
        </td>
    </tr>
</table>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
<table>
    <tr>
        <td>Car ID: </td><td><input type="number" name="car_id" min="1" required></td>
    </tr>
    <tr>
        <td>Driver ID: </td><td><input type="number" name="driver_id" min="1" required></td>
    </tr>
    <tr>
        <td></td><td><input type="submit" value="Add driver to car"></td>
    </tr>
</table>
</form>
</body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new car</title>
</head>
<%@include file="/WEB-INF/views/headers/heder.jsp"%><br>
<body>
<h1>To register a car, enter the model and the manufacturer's ID</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model"><br>
    Manufacturer ID <input type="text" name="manufacturerId"><br>
    <button type="submit">Confirm</button>
    <table>
        <tr>
            <td>ID</td>
            <td>Name</td>
            <td>Country</td>
        </tr>
        <c:forEach items="${allManufacturers}" var="manufacturer">
            <tr>
                <td><c:out value="${manufacturer.id}"/></td>
                <td><c:out value="${manufacturer.name}"/></td>
                <td><c:out value="${manufacturer.country}"/></td>
            </tr>
        </c:forEach>
    </table>
</form>
</body>
</html>

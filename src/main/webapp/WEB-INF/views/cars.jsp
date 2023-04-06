<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp"%><br>
<h3>Fill out the form to create the new car</h3>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model"><br>
    Manufacturer <select name="manufacturer_id">
    <option value="">-- Choose Manufacturer --</option>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <option value="${manufacturer.id}">
            <c:out value="${manufacturer.id}" />.
            <c:out value="${manufacturer.name}" />
        </option>
    </c:forEach>
</select><br>
    <button type="submit">Add car</button>
</form>
<h3>List of cars</h3>
<table>
    <tr>
        <td>ID</td>
        <td>Model</td>
        <td>Manufacturer</td>
        <td>Delete</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                <input type="button" value="DELETE"></a></td>
        </tr>
    </c:forEach>
</table><br>
</body>
</html>

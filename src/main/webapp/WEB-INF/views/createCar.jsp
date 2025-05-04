<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a car</title>
</head>
<body>
<h1>Create a car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <table>
        <tr>
            <td>ID</td>
            <td>NAME</td>
            <td>Country</td>
        </tr>
    <c:forEach items="${manufacturerList}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}" /></td>
            <td><c:out value="${manufacturer.name}" /></td>
            <td><c:out value="${manufacturer.country}" /></td>
        </tr>
    </c:forEach>
    </table>
        Model <input type="text" name="model"><br>
        Manufacturer id input <input type="text" name="manufacturer_id"><br>
    <button type="submit">Create</button>
    <br>
</form>
</body>
</html>
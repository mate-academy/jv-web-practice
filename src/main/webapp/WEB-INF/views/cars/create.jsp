<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>carCreation </title>
</head>
<body>

<h1>Existing manufacturers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"/></td>
            <td><c:out value="${manufacturer.name}"/></td>
            <td><c:out value="${manufacturer.country}"/></td>
        </tr>
    </c:forEach>
</table>

<h1>And now we're creating new car with existing manufacturer above</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Car's model: <input type="text" name="model">
    Car's manufacturer: <input type="number" name="manufacturer_id">
    <button type="submit">Create car</button>
</form>
</body>
</html>

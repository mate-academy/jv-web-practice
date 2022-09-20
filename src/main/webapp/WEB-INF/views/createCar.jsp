<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h3>Create car</h3>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model name <input type="text" name="model"><br>
    Manufacturer id <input type="text" name="manufacturer_id"><br>
    <button type="submit">submit</button>
</form>
<h3>List of manufacturers:</h3>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.getId()}"/></td>
            <td><c:out value="${manufacturer.getName()}"/></td>
            <td><c:out value="${manufacturer.getCountry()}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

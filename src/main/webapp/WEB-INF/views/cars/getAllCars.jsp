<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h1><p><strong>all cars in db</strong></p></h1>
<table border="1">
    <thead>
    <tr>
        <th>Id</th>
        <th>model</th>
        <th>manufacturer</th>
    </tr>
    </thead>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td><button type="submit">DELETE</button> </td>
        </tr>
    </c:forEach>
</table>
<h3><a href="http://localhost:8080/main">BACK</a></h3>
</body>
</html>

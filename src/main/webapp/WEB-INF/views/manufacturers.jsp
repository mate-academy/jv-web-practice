<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Manufacturers</title>
</head>
<body>
<h1>All manufacturers</h1>
<form action="${pageContext.request.contextPath}/manufacturers/add">
    <input type="submit" value="Add new manufacturer"/>
</form>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Country</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${manufacturersList}" var="manufacturer">
        <tr>
            <td>${manufacturer.getId()}</td>
            <td>${manufacturer.getName()}</td>
            <td>${manufacturer.getCountry()}</td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">DELETE</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>

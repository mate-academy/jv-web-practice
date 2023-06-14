<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: vikaa
  Date: 13.06.2023
  Time: 17:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <title>Manufacturers</title>
</head>
<body>
<h1>List of Manufacturers:</h1>
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
<h1>Create new manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <input type="text" name="model"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Submit and create manufacturer</button>
</form>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: vvasy
  Date: 05.04.2023
  Time: 15:24
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TAXI-manufacturer</title>
</head>
<body>
<%@ include file="/WEB-INF/views/index.jsp"%><br><br>
<h2>Create manufacturer form: </h2>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <input type="text" name="name" required><br></p>
    Country <input type="text" name="country" required><br>
    <p><button type="submit">Submit and Add</button><br></p>
</form><br>
<h2>Manufacturers: </h2>
<table>
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Country</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}" /></td>
            <td><c:out value="${manufacturer.name}" /></td>
            <td><c:out value="${manufacturer.country}" /></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

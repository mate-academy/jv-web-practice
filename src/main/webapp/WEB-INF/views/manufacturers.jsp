<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturers</title>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp"%><br>
<h3>Fill out the form below to add the manufacturer</h3>
<form method="post" action="${pageContext.request.contextPath}/manufacturer/add">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Add Manufacturer</button>
</form>
<h3>List of manufacturers</h3>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Country</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}" /></td>
            <td><c:out value="${manufacturer.name}" /></td>
            <td><c:out value="${manufacturer.country}" /></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">
                <input type="button" value="DELETE"></a></td>
        </tr>
    </c:forEach>
</table><br>
</body>
</html>

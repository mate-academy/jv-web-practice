<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturers</title>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp"%><br>
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
            <td><form action="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}" method="post">
                <button type="submit" name="delete_button" value="delete">DELETE</button>
            </form></td>
        </tr>
    </c:forEach>
</table><br>
<a href="${pageContext.request.contextPath}/manufacturers/add">
    <input type="button" value="Add new manufacturer" />
</a>
</body>
</html>

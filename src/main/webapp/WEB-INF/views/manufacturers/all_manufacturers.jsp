<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MANUFACTURERS</title>
</head>
<body>

<br><br>

<a href="${pageContext.request.contextPath}/manufacturers/create">
    <input type="button" value="Add new manufacturer" />
</a><br><br>

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
        </tr>
    </c:forEach>
</table>

<br><br>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">
    Choose manufacturer to delete <select name="manufacturer_id">
    <c:forEach items="${manufacturers}" var="manufacturer">
        <option value="${manufacturer.id}">
            <c:out value="${manufacturer.name}" />
            -
            <c:out value="${manufacturer.country}" />
        </option>
    </c:forEach>
</select> <br><br>
    <button type="submit">Bye-bye</button>
</form>

<br><br>
</body>
</html>


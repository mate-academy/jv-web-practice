<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<form method ="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name : <input type="text" name="name">
    Country : <input type="text" name="country">
    <button type="submit">Add</button>
</form>
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
</table>
</body>
</html>

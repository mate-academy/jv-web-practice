<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/views/buttons.jsp" %>
    <br>
    <title>Manufacturers</title>
</head>
<body>
<h1>Manufacturers</h1>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Country</th>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"/></td>
            <td><c:out value="${manufacturer.name}"/></td>
            <td><c:out value="${manufacturer.country}"/></td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/manufacturers/delete">
                    <input type="hidden" name="id" value="${manufacturer.id}">
                    <button type="submit">Delete</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    <table>
        <tr>
            <td><label>Model name</label></td>
            <td><input type="text" name="name"></td>
            <td><label>Country</label></td>
            <td><input type="text" name="country"></td>
            <td>
                <button type="submit">Create manufacturer</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>

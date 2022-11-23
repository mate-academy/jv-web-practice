<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Web Practice</title>
</head>
    <body>
        <h1>All Manufacturers List</h1>
        <table>
            <tr>
                <td>ID</td>
                <td>Name</td>
                <td>Country</td>
            </tr>
            <c:forEach items="${manufacturersList}" var="manufacturer">
                <tr>
                    <td><c:out value="${manufacturer.id}" /></td>
                    <td><c:out value="${manufacturer.name}" /></td>
                    <td><c:out value="${manufacturer.country}" /></td>
                    <td><button><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete</a></button></td>
                </tr>
            </c:forEach>
            <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
                <tr>
                    <td>#</td>
                    <td><input type="text" name="name"></td>
                    <td><input type="text" name="country"></td>
                    <td><button type="submit">add</button></td>
                </tr>
            </form>
        </table>
    </body>
</html>

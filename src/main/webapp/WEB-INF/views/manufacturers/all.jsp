<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all manufacturers</title>
</head>
    <body>
        <h1>List of manufacturers:</h1>
        <table>
            <tr>
                <td>ID</td>
                <td>NAME |</td>
                <td>COUNTRY</td>
                <td>DELETE</td>
            </tr>
            <c:forEach items="${manufacturer}" var="manufacturer">
                <tr>
                    <td><c:out value=" ${manufacturer.id}" /></td>
                    <td><c:out value=" ${manufacturer.name}" /></td>
                    <td><c:out value=" ${manufacturer.country}" /></td>
                    <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete this manufacturer</a></td>
                </tr>
            </c:forEach>
        </table>
        <h1></h1>
        <form method="get" action="${pageContext.request.contextPath}/manufacturers/add">
            Add new manufacturer <button type="submit">Add</button>
        </form>
        <h1></h1>
        <form method="get" action="${pageContext.request.contextPath}/">
            Home page <button type="submit">Go</button>
        </form>
    </body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Oleksandr Koval
  Date: 03.04.2023
  Time: 19:01
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Get All Manufacturers</title>
</head>
<body>
<h1>Manufacturers</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"/></td>
            <td><c:out value="${manufacturer.name}"/></td>
            <td><c:out value="${manufacturer.country}"/></td>
            <td>
                <form method="post"
                      action="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">
                    <button type="submit">DELETE</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>


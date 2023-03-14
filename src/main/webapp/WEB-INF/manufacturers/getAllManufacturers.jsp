<%--
  Created by IntelliJ IDEA.
  User: stim1
  Date: 13.03.2023
  Time: 20:43
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Get all manufacturers</title>
</head>
<body>
<h1>List of Manufacturers</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
        <td>DELETE</td>
    </tr>
    <%--@elvariable id="manufacturers" type="java.util.List"--%>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"/></td>
            <td><c:out value="${manufacturer.name}"/></td>
            <td><c:out value="${manufacturer.country}"/></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=&{manufacturer.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

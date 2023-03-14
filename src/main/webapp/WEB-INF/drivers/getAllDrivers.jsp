<%--
  Created by IntelliJ IDEA.
  User: stim1
  Date: 13.03.2023
  Time: 20:42
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Get all drivers</title>
</head>
<body>
<h1>List of Drivers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE NUMBER</td>
        <td>DELETE</td>
    </tr>
    <%--@elvariable id="drivers" type="java.util.List"--%>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=&{driver.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

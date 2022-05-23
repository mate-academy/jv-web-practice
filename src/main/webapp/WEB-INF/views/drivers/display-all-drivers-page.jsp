<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Вика
  Date: 22.05.2022
  Time: 18:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
<h1>Our drivers:</h1>
<table>
    <tr>
    <td>ID</td>
    <td>NAME</td>
    <td>LICENSE NUMBER</td>
    </tr>
    <c:forEach items="${allDriversList}" var="driver">
        <tr>
            <td><c:out value ="${driver.id}" /></td>
            <td><c:out value ="${driver.name}" /></td>
            <td><c:out value ="${driver.licenseNumber}" /></td>
            <td><a href="${pageContext.request.contextPath}drivers/delete?id=${driver.id}">DELETE</a> </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

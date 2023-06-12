<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Get all Drivers</title>
</head>
<body>
<h1>List of drivers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Driver Licence</td>
    </tr>
    <jsp:useBean id="drivers" scope="request" type="java.util.List"/>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.getId()}"/></td>
            <td><c:out value="${driver.getName()}"/></td>
            <td><c:out value="${driver.getLicenseNumber()}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
<h1> List of drivers:</h1>
<table>
    <tr>
        <td>id</td>
        <td>name</td>
        <td>license number</td>
    </tr>
    <jsp:useBean id="drivers" scope="request" type="java.util.List"/>
    <c:forEach items="${drivers}" var = "driver">
        <tr>
            <td><c:out value="${driver.id}"></c:out/></td>
            <td><c:out value="${driver.name}"></c:out/></td>
            <td><c:out value="${driver.licenseNumber}"></c:out/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List all drivers</title>
</head>
<body>
<h1>List all drivers</h1>
<table>
    <tr>
        <td>id</td>
        <td>name</td>
        <td>license number</td>
    </tr>
    <jsp:useBean id="driverList" scope="request" type="java.util.List"/>
    <c:forEach items="${driverList}" var="driver">
        <tr>
            <td>
                <c:out value="${driver.id}"/>
            </td>
            <td>
                <c:out value="${driver.name}"/>
            </td>
            <td>
                <c:out value="${driver.licenseNumber}"/>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

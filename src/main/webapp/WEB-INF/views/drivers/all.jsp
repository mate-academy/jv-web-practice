<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
</head>
<body>
<%@ include file="/WEB-INF/views/headers/button.jsp"%><br>
<h1>You can add a new driver using the form below:</h1><br>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver name <input type="text" name="name" required><br>
    License number <input type="text" name="license_number" required><br>
    <button type="submit">Add driver</button>
</form><br>
<h1>List of drivers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE NUMBER</td>
    </tr>
    <c:forEach items="${drivers}" var = "driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

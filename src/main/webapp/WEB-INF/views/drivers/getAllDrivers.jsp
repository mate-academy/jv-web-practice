<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All users</title>
</head>
<body>
<h1>List of Drivers:</h1>
<table>
    <h2>
        <tr>
        <h2><td>Id</td></h2>
        <h2><td>name</td></h2>
        <h2><td>licence number</td></h2>
    </tr>
    </h2>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <h2><td><c:out value="${driver.id}" /></td></h2>
            <h2><td><c:out value="${driver.name}" /></td></h2>
            <h2><td><c:out value="${driver.licenseNumber}" /></td></h2>
        </tr>
    </c:forEach>
</table>
<a href="http://localhost:8080/main">BACK</a>
</body>
</html>

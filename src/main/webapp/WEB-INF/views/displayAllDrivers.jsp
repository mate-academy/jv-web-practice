<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Display all drivers</title>
</head>
<body>
<h1>List of drivers</h1>
<table>
    <tr>
        <td>ID</td>
        <td>name</td>
        <td>licenseNumber</td>
    </tr>
    <c:forEach items="${allDrivers}" var="driver">
        <tr>
            <td><c: out value ="${driver.id}"/></td>
            <td><c: out value ="${driver.name}"/></td>
            <td><c: out value ="${driver.licenseNumber}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
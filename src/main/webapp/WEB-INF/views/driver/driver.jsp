<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Driver</title>
</head>
<body>
<h1>Driver Info:</h1>
<table border="1">
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>License Number</td>
    </tr>
    <tr>
        <td><c:out value="${driver.id}"/></td>
        <td><c:out value="${driver.name}"/></td>
        <td><c:out value="${driver.licenseNumber}"/></td>
    </tr>
</table>
</body>
</html>

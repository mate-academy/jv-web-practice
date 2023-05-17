<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get driver</title>
</head>
<body>
<h1>Driver</h1>
<table>
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>License Number</td>
    </tr>
    <tr>
        <td><c:out value="${driver.id}" /></td>
        <td><c:out value="${driver.name}" /></td>
        <td><c:out value="${driver.licenseNumber}" /></td>
    </tr>
</table>
</body>
</html>

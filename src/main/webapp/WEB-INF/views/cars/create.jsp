<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a new car</title>
</head>
<body>
<h1>Fill in car details</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    <table>
        <tr>
            <td>Model:</td>
            <td><input type="text" name="model"></td>
        </tr>
        <tr>
            <td>Manufacturer id:</td>
            <td><input type="number" name="manufacturer_id"></td>
        </tr>
        <tr>
            <td><button type="submit">Create a new car</button></td>
            <td></td>
        </tr>
    </table>
</form>
</body>
</html>

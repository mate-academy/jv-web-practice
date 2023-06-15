<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Car</title>
</head>
<body>
<h1>Add car</h1>
<form method="post" id="car" action="${pageContext.request.contextPath}/cars/new"></form>
<h1></h1>
<table>
    <tr>
        <th>Model</th>
        <th>Manufacturer ID</th>
        <th>Add</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="model" form="car" required>
        </td>
        <td>
            <input type="number" name="manufacturer_id" form="car" required>
        </td>
        <td>
            <input type="submit" name="add" form="car">
        </td>
    </tr>
</table>

</body>
</html>

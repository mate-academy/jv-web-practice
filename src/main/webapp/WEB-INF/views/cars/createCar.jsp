<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<form method="post" id="car" action="${pageContext.request.contextPath}/cars/create"></form>
<h1>Create car:</h1>
<table>
    <tr>
        <th>Model</th>
        <th>Manufacturer ID</th>
        <th>Create</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="model" form="car" required>
        </td>
        <td>
            <input type="number" name="manufacturer_id" form="car" required>
        </td>
        <td>
            <input type="submit" name="create" form="car">
        </td>
    </tr>
</table>
</body>
</html>

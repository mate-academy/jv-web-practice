<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new car</title>
</head>
<body>
<h3>Create a new car:</h3>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    <table>
        <tr>
            <th>Model</th>
            <th>Manufacturer ID</th>
        </tr>
        <tr>
            <td><input type="text" name="model"></td>
            <td><input type="number" name="manufacturer_id"></td>
        </tr>
    </table>
    <button type="submit">Create car</button>
</form>
</body>
</html>
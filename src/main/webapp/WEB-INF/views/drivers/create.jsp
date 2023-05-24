<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new driver</title>
</head>
<body>
<h3>Create a new driver:</h3>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    <table>
        <tr>
            <th>Name</th>
            <th>LicenseNumber</th>
        </tr>
        <tr>
            <td><input type="text" name="name"></td>
            <td><input type="text" name="license_number"></td>
        </tr>
    </table>
    <button type="submit">Create driver</button>
</form>
</body>
</html>
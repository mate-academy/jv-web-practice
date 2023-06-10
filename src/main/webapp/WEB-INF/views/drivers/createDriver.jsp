<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<form method="post" id="driver" action="${pageContext.request.contextPath}/drivers/create"></form>
<h1>Create driver:</h1>
<table>
    <tr>
        <th>Name</th>
        <th>License number</th>
        <th>Create</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="name" form="driver" required>
        </td>
        <td>
            <input type="text" name="license_number" form="driver" required>
        </td>
        <td>
            <input type="submit" name="create" form="driver">
        </td>
    </tr>
</table>
</body>
</html>

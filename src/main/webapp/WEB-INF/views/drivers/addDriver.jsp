<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DriverCreating</title>
</head>
<body>
<h1>You can add new driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/addDriver">
    Name <input type="text" name="name"><br>
    License Number <input type="text" name="license_number">
    <button type="submit">Add</button>
</form>
</table>
</body>
</html>

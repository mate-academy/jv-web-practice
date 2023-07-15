<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update driver</title>
</head>
<body>
<h1>Update driver:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/update">
    Name <input type="text" name="driver_name"><br>
    License Number <input type="number" name="license_number"><br>
    Id <input type="number" name="driver_id"><br>
    <button type="submit">Update</button>
</form>
</body>
</html>

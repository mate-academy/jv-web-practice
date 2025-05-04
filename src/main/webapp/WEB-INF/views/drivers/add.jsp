<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create new driver</title>
</head>
<body>
<h2>Please fill the form below to create new driver:</h2>

<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <label>
        Name <input type="text" name="drivername" required>
    </label><br>
    <label>
        LicenseNumber
        <input type="text" name="licensenumber" required>
    </label><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>

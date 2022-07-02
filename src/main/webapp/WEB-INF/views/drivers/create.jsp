<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create new driver</title>
</head>
<body>
<h1>Please fill the form below to create new driver:</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    <label>
        Name <input type="text" name="drivername">
    </label><br>
    <label>
        LicenseNumber
        <input type="text" name="licensenumber">
    </label><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>


<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Create Driver</title>
</head>
<body>
<h3>Create new driver</h3>
<form method="post" action="${pageContext.request.contextPath}/driver/createDriver">
    <label>
        Driver name
        <input type="text" name="name">
    </label><br>
    <label>
        License Number name
        <input type="text" name="licenseNumber">
    </label><br>
    <button type="submit">Create</button>
</form>
</body>
</html>

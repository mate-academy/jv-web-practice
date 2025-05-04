<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a driver</title>
</head>
<body>
<h1>Create a driver</h1>
<p><a href="${pageContext.request.contextPath}/drivers">Back</a></p>
<form action="${pageContext.request.contextPath}/drivers/new" method="post">
    <label for="driver_name">Driver's Name</label>
    <input type="text" id="driver_name" name="name" required/><br/>
    <label for="driver_license_number">Driver's License number</label>
    <input type="text" id="driver_license_number" name="license_number" required/><br/>
    <button type="submit" style="cursor: pointer">Create</button>
</form>
</body>
</html>

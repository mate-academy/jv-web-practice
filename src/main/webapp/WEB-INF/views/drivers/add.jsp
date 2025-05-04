<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Driver creation page</title>
</head>
<br>
<h1>Please fill required information below:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver's name: <input type="text" name="driverName" required><br>
    License Number: <input type="text" name="licenseNumber" required><br>
    <button type="submit">Submit</button>
</form>
<h2>Navigation:</h2>
<a href="${pageContext.request.contextPath}/drivers/add">Back to drivers list</a><br>
<a href="${pageContext.request.contextPath}/index">Back to index</a>
</body>
</html>

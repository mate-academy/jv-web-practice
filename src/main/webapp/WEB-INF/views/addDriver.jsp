<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h2><a href="/index">Back to home page</a></h2>
<br>
<h2>
    Please indicate name and license number for new driver:
</h2>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <label for="driverName">Driver name</label><br>
    <input type="text" id="driverName" name="driverName"><br>
    <label for="driverLicense">Driver licence</label><br>
    <input type="number" id="driverLicense" name="driverLicense"><br><br>
    <input type="submit" value="Add driver">
    <input type="reset">
</form>
</body>
</html>

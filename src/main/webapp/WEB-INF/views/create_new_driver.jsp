<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new driver page</title>
</head>
<body>
<h1>Add new driver to database</h1>
<h3>Add an information below to add a new driver</h3>
<form method="post" action="${pageContext.request.contextPath}/create_new_driver">
    Driver Name: <input type="text" name="driverName"> <br>
    Drivers licence Number : <input type="text" name="licenceNumber"> <br>
    <button type="submit">Submit</button>
</form>
</body>
</html>

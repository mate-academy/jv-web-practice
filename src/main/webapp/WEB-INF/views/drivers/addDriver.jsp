<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a new Driver</title>
</head>
<body>
<h1 style="color: blue">Please fill out the form below to add a new Driver:</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver name <input type="text" name="drivername"><br>
    License number <input type="text" name="licensenumber"><br><br>
    <button type="submit">ADD DRIVER</button>
</form>

</body>
</html>

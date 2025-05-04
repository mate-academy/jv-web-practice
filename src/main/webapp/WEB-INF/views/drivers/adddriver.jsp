<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new Driver</title>
</head>
<body>
<h1>Please the form below to add new Driver</h1>
<form method="post" action = "${pageContext.request.contextPath}/drivers/add">
   <h3>Driver Name</h3> <input type="text" name="driverName"><br>
   <h3>Diver License Number</h3> <input type="text" name="licenseNumber"> <br>
   <br><button type="submit"><h2>Confirm</h2></button>
</form>
</body>
</html>

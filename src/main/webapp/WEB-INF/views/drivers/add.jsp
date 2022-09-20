<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CTaxi service</title>
</head>
<body>
    <h1>Create a driver</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        Driver name <input type="text" name="driver_name"><br>
        Driver license number <input type="text" name="driver_license"><br>
        <button type="submit">Create</button>
    </form>
</body>
</html>

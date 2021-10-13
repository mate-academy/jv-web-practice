<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new driver</title>
</head>
<body>
    <h1>Enter the driver data</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        Drivers name: <input type="text" name="name"><br>
        Drivers license: <input type="text" name="license_number"><br>
        <button type="submit">Create new driver</button>
    </form>
</body>
</html>

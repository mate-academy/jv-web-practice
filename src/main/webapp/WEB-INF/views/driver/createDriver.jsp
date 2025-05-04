<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Crate Driver</title>
</head>
<body>
    <h1>Create driver</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        Driver_name <input type="text" name="name"><br>
        License_number <input type="password" name="license_number"><br>
        <button type="submit">Confirm</button>
    </form>
</body>
</html>

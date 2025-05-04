<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Register Driver</title>
    </head>
    <body>
        <h1>Form Of Registration</h1>
        <form method="post" action="${pageContext.request.contextPath}/drivers/add">
            Driver name<input type="text" name="driverName"><br>
            License number<input type="text" name="licenseNumber"><br>
            <button type="submit">Register</button>
        </form>
    </body>
</html>

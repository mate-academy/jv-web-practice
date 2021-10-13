<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Register Car</title>
    </head>
    <body>
        <h1>Form Of Registration</h1>
        <form method="post" action="${pageContext.request.contextPath}/car/add">
            Car model<input type="text" name="carModel"><br>
            Manufacturer ID<input type="text" name="manufacturerId"><br>
            <button type="submit">Register</button>
        </form>
    </body>
</html>

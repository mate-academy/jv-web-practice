<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Registration</title>
    </head>
    <body>
        <h1>Driver registration</h1>

        <h2>Please the form below</h2>

        <form method="post" action="${pageContext.request.contextPath}/drivers/register">
            Driver name <input type="text" name="name"><br>
            License number <input type="text" name="licenseNumber"><br>
            <button type="submit">Confirm</button>
        </form>
        <h1></h1>
        <form method="get" action="${pageContext.request.contextPath}/">
            Home page <button type="submit">Go</button>
        </form>
    </body>
</html>

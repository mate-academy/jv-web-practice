<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
</head>
    <body>
        <h1>Car registration</h1>

        <h2>Please the form below</h2>

        <form method="post" action="${pageContext.request.contextPath}/cars/register">
            Car model <input type="text" name="model"><br>
            Manufacturer <input type="text" name="manufacturer"><br>
            <button type="submit">Confirm</button>
        </form>
        <h1></h1>
        <form method="get" action="${pageContext.request.contextPath}/">
            Home page <button type="submit">Go</button>
        </form>
    </body>
</html>

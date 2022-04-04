<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
</head>
    <body>
        <h1>Manufacturer registration</h1>

        <h2>Please the form below</h2>

        <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
            Manufacturer name <input type="text" name="name"><br>
            Country <input type="text" name="country"><br>
            <button type="submit">Confirm</button>
        </form>
        <h1></h1>
        <form method="get" action="${pageContext.request.contextPath}/">
            Home page <button type="submit">Go</button>
        </form>

    </body>
</html>

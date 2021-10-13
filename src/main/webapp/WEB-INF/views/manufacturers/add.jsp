<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Register Manufacturer</title>
    </head>
    <body>
        <h1>Form Of Registration</h1>
        <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
            Manufacturer name<input type="text" name="manufacturerName"><br>
            Manufacturer country<input type="text" name="country"><br>
            <button type="submit">Register</button>
        </form>
    </body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Adding a new driver</title>
    </head>
    <body>
        <h1>Add new driver: </h1>
        <form method="post" action="${pageContext.request.contextPath}/drivers/add">
            Driver's name <input type="text" name="name"><br>
            Driver's License Number <input type="text" name="license"><br>
            <button type="submit">Add</button><br>
        </form>
    </body>
</html>

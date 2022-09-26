<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add driver</title>
    </head>
    <body>
        <h1>Fill out the form for adding a driver</h1>
        <form method="post" action="${pageContext.request.contextPath}/drivers/addDriver">
        Name <input type="text" required name="name"><br>
        License number <input type="number" required name="license"><br>
        <button type="submit">Add New Driver</button>
        </form>
    </body>
</html>

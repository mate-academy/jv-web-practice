<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Adding a new manufacturer</title>
    </head>
    <body>
        <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
            Name <input type="text" name="name"><br>
            Country <input type="text" name="country"><br>
            <button type="submit">Add</button><br>
        </form>
    </body>
</html>

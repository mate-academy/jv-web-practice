<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Create new manufacturer</title>
    </head>
    <body>
        <h1>Enter parameters and confirm to create a record of a new manufacturer:</h1>
        <form action="${pageContext.request.contextPath}/manufacturers/add" method="post">
            Name: <input type="text" name="name" maxlength="255" required><br><br>
            Country: <input type="text" name="country" maxlength="255" required><br><br>
            <button type="submit">Confirm</button>
        </form>
    </body>
</html>

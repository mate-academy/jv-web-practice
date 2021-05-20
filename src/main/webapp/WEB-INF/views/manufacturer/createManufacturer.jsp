<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add new manufacturer</title>
    </head>
    <body>
        <h1>Please, fill out the form below:</h1>
        <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
            name <input type="text" name="name" required><br>
            country <input type="text" name="country" required><br>
            <button type="submit">add</button>
        </form>
    </body>
</html>

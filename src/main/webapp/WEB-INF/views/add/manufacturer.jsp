<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add manufacturer</title>
    </head>
    <body>
        <h2>Fill the form and press button:</h2>
        <form method="post" action="${pageContext.request.contextPath}/add/manufacturer">
            Name <label> <input type="text" name="name"> </label> <br>
            Country <label> <input type="text" name="country"> </label> <br>
            <button type="submit">Add manufacturer</button>
        </form>
    </body>
</html>

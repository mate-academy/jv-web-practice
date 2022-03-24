<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a new driver</title>
</head>
<body>
    <h1>Please fill in the fields below:</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        Name <input type="text" name="name"><br>
        Licence number <input type="text" name="licence_number"><br>
        <button type="submit">Create</button>
    </form>
</body>
</html>

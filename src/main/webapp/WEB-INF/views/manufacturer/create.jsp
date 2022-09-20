<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new manufacturer</title>
</head>
<body>
    <h1>Enter data to new manufacturer:</h1>
    <form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
        Manufacturer's name <input type="text" name="name"><br>
        Manufacturer's country <input type="text" name="country"><br>
        <button type="submit">Create</button>
    </form>
</body>
</html>

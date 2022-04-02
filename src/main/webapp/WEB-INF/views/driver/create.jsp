<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding a driver</title>
</head>
<body>
    <h1>Add driver to database</h1>
<form method="post" action="${pageContext.request.contextPath}/driver/create">
    Driver name <input type="text" name="name"><br>
    Driver license number <input type="number" name="licenseNumber"><br>
    <button type="submit">Add</button>
</form>
    <form method="get" action="${ageContext.request.contextPath}/">
        <button type="submit">Back to home</button>
    </form>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car creating</title>
</head>
<body>
<h1>Please the form bellow</h1>
<form method ="post" action="${pageContext.request.contextPath}/cars/create">
    Car model <input type="text" name="model"><br>
    Maker name <input type="text" name="maker"><br>
    Maker country <input type="text" name="maker_country"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new car</title>
</head>
<body>
<h1>Fill the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car model <input type="text" name="model"><br>
    Car manufacturer <input type="text" name="manufacturer"><br>
    <button type="create">Create</button>
</form>
</body>
</html>

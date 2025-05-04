<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new manufacturer</title>
</head>
<body>
<h1>Fill the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer name <input type="text" name="name"><br>
    Manufacturer country <input type="text" name="country"><br>
    <button type="create">Create</button>
</form>
</body>
</html>

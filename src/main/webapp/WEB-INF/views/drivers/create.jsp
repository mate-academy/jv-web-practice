<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Enter data</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    <label>Name</label> <input type="text" name="name"><br>
    <label>License Number</label> <input type="text" name="number"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>

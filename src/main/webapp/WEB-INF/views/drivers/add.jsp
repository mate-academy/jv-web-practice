<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Please write your data</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name<br><input type="text" name="name"><br>
    License number<br><input type="text" name="license_number"><br>
    <button type="submit">Add</button>
</form>
</body>
</html>

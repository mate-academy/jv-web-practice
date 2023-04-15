<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add manufacturer</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    MANUFACTURER NAME <input type="text" name="name"><br>
    COUNTRY <input type="text" name="country"><br>
    <button type="submit">Add</button>
</form>
</body>
</html>

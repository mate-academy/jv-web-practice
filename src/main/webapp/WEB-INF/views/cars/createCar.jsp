<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    model <input type="text" name="model"><br>
    manufacturer <input type="text" name="manufacturer"><br>
    manufacturer country <input type="text" name="country"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>

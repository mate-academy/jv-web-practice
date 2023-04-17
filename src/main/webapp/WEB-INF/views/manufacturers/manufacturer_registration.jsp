<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new manufacturer</title>
</head>
<body>
<h1>Manufacturer registration form</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    NAME <input type="text" name="manufacturerName"><br>
    COUNTRY <input type="text" name="country"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>

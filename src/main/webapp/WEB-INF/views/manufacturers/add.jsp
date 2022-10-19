<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creating a manufacturer</title>
</head>
<body>
<h1>Fill the form to create manufacturer:</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Brand: <input type="text" name="name">
    Country: <input type="text" name="country">
    <button type="submit">Confirm</button>
</form>
</body>
</html>

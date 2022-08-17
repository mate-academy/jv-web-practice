<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a new manufacturer</title>
</head>
<body>
<h1>Add a new manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    NAME <input type="text" name="name"><br>
    COUNTRY <input type="text" name="country"><br>
    <button type="submit">SUBMIT</button>
</form>
</body>
</html>

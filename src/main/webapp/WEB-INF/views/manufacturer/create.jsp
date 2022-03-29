<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Create new manufacturer</title>
</head>
<body>
<h1>Please, input relevant information</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Manufacturer`s name <input type="text" name="name"><br>
    Manufacturer`s country <input type="text" name="country"><br>
    <button type="Submit">Confirm</button>
</form>
</body>
</html>

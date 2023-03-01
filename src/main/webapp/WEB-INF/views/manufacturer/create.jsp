<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add manufacturer</title>
</head>
<body>
<h1>Please fill out the form below to add a manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name           <input type="text" name="name" required="required"><br>
    Country <input type="text" name="country" required="required"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
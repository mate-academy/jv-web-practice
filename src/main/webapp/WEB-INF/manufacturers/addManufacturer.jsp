<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add manufacturer</title>
</head>
<body>
<h1>Please, complete the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer name <input type="text" name="name" required="required"><br>
    Country <input type="text" name="country" required="required"><br>
    <button type="submit">Add manufacturer</button>
</form>
<br/>
<a href="${pageContext.request.contextPath}/main">Back to main page</a>
</body>
</html>

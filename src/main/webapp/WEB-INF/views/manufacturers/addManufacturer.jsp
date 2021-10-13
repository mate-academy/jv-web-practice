<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add manufacturer</title>
</head>
<body>
<h1>Please fill the fields below</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer name <input type="text" name="name" required="required">
    Country <input type="text" name="country" required="required">
    <button type="submit">Add manufacturer</button>
</form>
</body>
</html>

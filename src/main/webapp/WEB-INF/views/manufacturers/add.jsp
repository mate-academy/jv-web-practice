<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add manufacturer</title>
</head>
<body>
<h1>Enter manufacturer's info</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer's name <br><input type="text" name="name" required><br>
    Country <br><input type="text" name="country" required><br><br>
    <button type="submit">Add manufacturer</button>
    <button type="reset">Cancel</button>
</form>
<form action="${pageContext.request.contextPath}/index" target="_blank">
    <button>Back to main</button>
</form>
</body>
</html>

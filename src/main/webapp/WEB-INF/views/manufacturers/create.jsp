<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add new manufacturer</title>
</head>
<body>
<h1>Add new manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Save</button>
</form>
<a href="${pageContext.request.contextPath}/manufacturers/manufacturers">Back</a>
<a href="${pageContext.request.contextPath}/index">Home</a>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturer add</title>
</head>
<body>
<h1>Add manufacturer</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturer">
    Name <input type="text" name="manufacturerName">
    Country <input type="text" name="country">
    <button type="submit">Save</button>
</form>
</body>
</html>

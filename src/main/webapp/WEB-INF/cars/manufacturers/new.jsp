<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new manufacturer</title>
</head>
<body>
<h1>Create new manufacturer</h1>

<form method="post" action ="${pageContext.request.contextPath}/cars/manufacturers/new">
    Name <label>
    <input type="text" name="name">
</label><br>
    Country <label>
    <input type="text" name="country">
</label><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>

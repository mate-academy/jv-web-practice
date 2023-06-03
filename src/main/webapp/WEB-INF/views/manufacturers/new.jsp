<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New</title>
</head>
<body>
<h1>Add new manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/new">
    Name: <input type="text" name="name"></br>
    Country: <input type="text" name="country"> </br>
    <button>Create</button>
</form>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name <input required="required" type = "text" name = "name"><br>
    Country <input required="required" type = "text" name = "country"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>

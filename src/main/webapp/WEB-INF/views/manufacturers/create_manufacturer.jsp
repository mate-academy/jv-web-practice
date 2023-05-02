
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new manufacturer</title>
</head>
<body>
<h1>Let's create a new manufacturer in our service</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name <input type="text" name="name"><br><br>
    Country <input type="text" name="country"><br><br>
    <button type="submit">LET`S GO</button>
</form>
</body>
</html>

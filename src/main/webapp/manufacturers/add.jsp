<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>Adding new manufacturer to database</h1>
<h2>Fill the fields below</h2>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    name <input type="text" name="name"><br>
    country <input type="text" name="country"><br>
    <button type="submit">Confirm</button>
</form>
<h1>${message}</h1>
</body>
</html>

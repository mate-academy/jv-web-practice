<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Maker creating</title>
</head>
<body>
<h1>Please the form bellow</h1>
<form method ="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Maker name <input type="text" name="maker_name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>

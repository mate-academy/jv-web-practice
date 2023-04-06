<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a manufacturer</title>
</head>
<body>
<h1>Insert data to create manufacturer:</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Enter manufacturer name <input type="text" name="name"><br>
    Enter manufacturer country <input type="text" name="country"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>

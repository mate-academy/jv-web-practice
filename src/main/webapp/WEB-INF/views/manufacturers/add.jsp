<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add manufacturer</title>
</head>
<body>
<h1>manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer Name <br><input type="text" name="name"><br>
    Manufacturer Country <br><input type="text" name="country"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>

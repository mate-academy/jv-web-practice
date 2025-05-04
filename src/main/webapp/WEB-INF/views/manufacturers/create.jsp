<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Manufacturer</title>
</head>
<body>
<h1>Create Manufacturer</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    NAME  <input type="text" name="name"><br>
    COUNTRY <input type="text" name="country"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>

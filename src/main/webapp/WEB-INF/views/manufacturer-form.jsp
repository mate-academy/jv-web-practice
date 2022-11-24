<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Manufacturer form</title>
</head>
<body>
<form method="POST" action="${pageContext.request.contextPath}/manufacturers/add">
    Name: <input type="text" name="name"><br/>
    Country: <input type="text" name="country"/>
    <input type="submit" value="Submit"/>
</form>
</body>
</html>

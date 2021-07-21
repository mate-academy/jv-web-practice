<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Manufacturer</title>
</head>
<body>
<form name="createDriver" method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name: <input type="text" name="name"/> <br/>
    Country: <input type="text" name="country"/> <br/>
    <input type="submit" value="create"/>
</form>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Manufacturer</title>
</head>
<body>
    <p>Form for creating a manufacturer</p>
    <form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
        Manufacturer name<input type="text" name="name">
    <br>
        Manufacturer country<input type="text" name="country">
    <br>
    <button type="submit" >Create Manufacturer</button>
</form>
</body>
</html>

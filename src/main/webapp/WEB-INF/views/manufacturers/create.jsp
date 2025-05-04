<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/createManufacturer">
    Manufacturer name<input type="text" name="name">
    Manufacturer country<input type="text" name="country">
    <button type="submit" >Confirm</button>
</form>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Add your car below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    model <input type ="text" name="name">
    Manufacturer ID <input type ="text" name="manufacturerId">
    <button type="submit">Confirm</button>
</form>
<form action="${pageContext.request.contextPath}/cars">
    <input type="submit" value="Return to previous page">
</form>
<form action="${pageContext.request.contextPath}/index">
    <input type="submit" value="Return to First page">
</form>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Create new car:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="name"><br>
    Manufacturer ID <input type="number" name="manufacturer_id"><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>

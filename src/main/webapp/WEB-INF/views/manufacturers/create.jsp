<%@ page contentType="text/html;charset=UTF-8"  %>
<html>
<head>
    <title>Creating Manufacturer</title>
</head>
<body>
<h1>Please enter data of new manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    name <label>
    <input type="text" name="name">
</label><br>
    country <label>
    <input type="text" name="country">
</label><br>
    <button type="submit">Create</button>
</form>
</body>
</html>

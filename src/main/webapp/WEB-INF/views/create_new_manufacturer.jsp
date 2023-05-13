<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new manufacturer</title>
</head>
<body>
<h1>Add new manufacturer to database</h1>
<h3>Add an information below to create a new manufacturer</h3>
<form method="post" action="${pageContext.request.contextPath}/create_new_manufacturer">
    Manufacturer Name: <input type="text" name="manufacturerName"> <br>
    Manufacturer country : <input type="text" name="manufacturerCountry"> <br>
    <button type="submit">Submit</button>
</form>
</body>
</html>

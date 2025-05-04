<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a new Manufacturer</title>
</head>
<body>
<h1 style="color: blue">Please fill out the form below to add a new Manufacturer:</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer name <input type="text" name="manufacturerName" style="right: auto"><br>
    Manufacturer country <input type="text" name="manufacturerCountry" style="right: auto"><br><br>
    <button type="submit">ADD MANUFACTURER</button>
</form>

</body>
</html>

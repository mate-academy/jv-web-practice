<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new Manufacturer</title>
</head>
<body>
<h1>Create your Manufacturer:</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
  Manufacturer Name <input type="text" name="ManufacturerName"><br>
  Manufacturer Country <input type="text" name="ManufacturerCountry"><br>
  <button type="submit">Create Manufacturer</button>
</form>
</body>
</html>

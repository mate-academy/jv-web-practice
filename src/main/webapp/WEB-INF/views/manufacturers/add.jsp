<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create Manufacturer</title>
</head>
<body>
<h1>Form for creating the manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
  Manufacturer name: <input type="text" name="manufacturer_name"><br>
  Manufacturer country: <input type="text" name="manufacturer_country"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
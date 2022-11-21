<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add new Driver</title>
</head>
<body>
<h1>Please the form below to add new Manufacturer</h1>
<form method="post" action = "${pageContext.request.contextPath}/manufacturers/add">
  <h3>Manufacturer Name</h3> <input type="text" name="manufacturerName"><br>
  <h3>Manufacturer Country</h3> <input type="text" name="manufacturerCountry"> <br>
  <br><button type="submit"><h2>Confirm</h2></button>
</form>
</body>
</html>

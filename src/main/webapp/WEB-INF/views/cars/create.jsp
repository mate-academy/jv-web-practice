<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Car creation</title>
</head>
<body>
<h2>Create car:</h2>
<form method = "post"  action = "${pageContext.request.contextPath}/cars/create">
  Model <input type = "text" name = "model"><br>
  Manufacturer id <input type="number" name = "manufacturerId"><br>
  <button type="submit">Create</button>
    <button type="reset">Reset</button>
</form>
</body>
</html>

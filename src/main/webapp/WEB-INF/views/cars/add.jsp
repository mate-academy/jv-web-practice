<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h4>Fill the form to add car</h4>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
  Model : <input type="text" name="model"><br>
  Manufacturer id : <input type="number" name="manufacturerId"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>

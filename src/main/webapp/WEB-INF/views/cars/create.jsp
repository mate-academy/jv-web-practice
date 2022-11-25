<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Create Car</title>
</head>
<body>
<h1>Creating car Form</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/add">
  Model <label>
  <input type="text" name="model">
</label><br>
  Manufacturer id <label>
  <input type="text" name="manufacturer_id">
</label><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>

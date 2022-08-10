<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create car</title>
</head>
<body>
<h1>Enter the car`s info</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <label>Model</label><br>
    <label>
      <input type="text" name="model">
    </label><br>
    <label>Manufacturer ID</label><br>
    <label>
      <input type="number" name="manufacturer_id">
    </label><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add car</title>
</head>
<body>
<div style="text-align: center; color: blue">
  <h1>
    Super form for create a Car!
  </h1>
</div>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
  Model: <input type="text" name="model"><br>
  Manufacturer id: <input type="number" name="manufacturer_id"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
  <h1>Create Car</h1>
  <form method="post" action="${pageContext.request.contextPath}/cars/create">
    <p>Manufacturer id: <input type="number" name="manufacturer_id"></p>
    <p>Model: <input type="text" name="model"></p>
    <button type="submit">Create!</button>
  </form>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver</title>
</head>
<body>
  <h1>Add driver</h1>
  <form method="post" action="${pageContext.request.contextPath}/cars/addDriver">
      <p>Driver id: <input type="text" name="driver_id"></p>
      <p>Car id: <input type="text" name="car_id"></p>
      <button type="submit">Add!</button>
  </form>
</body>
</html>

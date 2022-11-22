<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add driver to car</title>
</head>
<body>
<div style="text-align: center; color: blue">
  <h1>
    Super form add Driver to a Car!
  </h1>
</div>
<form method="post" action="${pageContext.request.contextPath}/drivers/addDriverToCar">
  Car id: <input type="text" name="car_id"><br>
  Driver id: <input type="text" name="driver_id"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
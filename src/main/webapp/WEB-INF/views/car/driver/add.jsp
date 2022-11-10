<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>TAXI SERVICE</title>
</head>
<body>
  <h3>Add driver to car</h3>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Car ID <input type="text" name="car_id"><br>
  Driver ID <input type="text" name="driver_id"><br>
  <button type="submit">Create</button>
</form>
  <td><a href="${pageContext.request.contextPath}/service"><- back to service menu</a></td>

</body>
</html>

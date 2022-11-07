<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>New car</title>
</head>
<body>
<h2>Enter info of new car</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  <label>
    Car id:
    <input type="number" name="car_id"/>
  </label>
  <br/>
  <label>
    Driver id:
    <input type="number" name="driver_id">
  </label>
  <br/>
  <button type="submit">Create</button>
</form>
</body>
</html>

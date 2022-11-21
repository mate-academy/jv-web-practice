<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <style>
    h1, form {
      margin-left: auto;
      margin-right: auto;
      border-collapse: collapse;
      width: 500px;
      text-align: center;
      font-size: 20px;
    }
  </style>
</head>

<head>
  <title>Add driver to car</title>
</head>

<body>
<h1>Add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Car Id <input type="text" name="car_id"><br>
  Driver Id <input type="text" name="driver_id"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add driver to car</title>
  <style>
    body {
      text-size-adjust: 100%;
      box-sizing: border-box;
      margin: 5px;
      font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
      font-size: 14px;
      line-height: 1.5;
      color: rgb(36, 41, 46);
      background-color: rgb(255, 255, 255);
    }
    button {
      background-color: white;
    }
  </style>
</head>
<body>
<h3>Enter values for add driver to car:</h3>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Driver id <input type="text" name="driverId"><br>
  Car Id <input type="text" name="carId"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>

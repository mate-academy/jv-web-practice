<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <style>
    h1, table, th, form {
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
  <title>Creating car</title>
</head>
<body>
  <h1>Create new car</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/create">
      Model <input type="text" name="model"><br>
      Manufacturer_id <input type="text" name="manufacturer_id"><br>
      <button type="submit">Confirm</button>
    </form>
</body>
</html>

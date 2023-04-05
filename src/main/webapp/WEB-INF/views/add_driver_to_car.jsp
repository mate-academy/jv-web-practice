<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Add driver to car</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #D8DFF5;
    }
    h1 {
      padding: 20px;
      background-color: #3930f9;
      color: white;
      text-align: center;
      margin: 0;
    }

    form {
      display: flex;
      flex-direction: column;
      align-items: center;
      margin-top: 20px;
    }

    input, button {
      margin: 5px 0;
      width: 50%;
      padding: 10px;
      font-size: 16px;
    }

    button {
      background-color: #201f56;
      color: white;
      cursor: pointer;
      border: none;
    }

    button:hover {
      background-color: #3930f9;
    }
  </style>
</head>
<body>
<h1>Add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/add_driver_to_car">
  Car ID: <input type="number" name="carId" required><br>
  Driver ID: <input type="number" name="driverId" required><br>
  <button type="submit">Add driver to car</button>
</form>
</body>
</html>
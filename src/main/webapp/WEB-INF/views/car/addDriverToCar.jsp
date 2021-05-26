<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
    <style>
    body{
        background-color: azure;    }
    div {
        text-align: center;
    }
    </style>
</head>
<body>
<div>
    <h1>Fill out the form!</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
          DriverID:  <input type="text" name="driver_id"><br>
          CarID: <input type="text" name="car_id"><br>
          <button type="submit">Confirm</button>
    </form>
</div>
</body>
</html>

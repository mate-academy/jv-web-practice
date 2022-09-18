<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi Service</title>
</head>
<body>
    <h1>Add driver to car</h1>
    <form method="post" action="${pageContext.request.contextPath}/car/addDriverToCar">
      DriverId <input type="number" name="driver_id">
      CarId <input type="number" name="car_id">
      <button type="submit">Submit</button>
    </form>
</body>
</html>

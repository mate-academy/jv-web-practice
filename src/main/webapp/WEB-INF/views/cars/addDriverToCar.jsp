<%--
  Created by IntelliJ IDEA.
  User: Upgrade
  Date: 1/5/2023
  Time: 8:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Add driver to car</title>
</head>
<body>
<h1> Please enter DriverID and CarID</h1>
<form method="post"
      action="${pageContext.request.contextPath}/cars/addDriverToCar">
      Driver id: <input type="number"
     name="driver_id"><br>
    Car id: <input type="name"
                      name="car_id"><br>
    <button type="submit">Submit here</button>
</form>
</body>
</html>

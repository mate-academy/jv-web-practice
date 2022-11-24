<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Driver to car form</title>
</head>
<body>
  <form method = "POST" action = "${pageContext.request.contextPath}/cars/drivers/add">
    Car ID: <input type = "text" name = "car_id"><br />
    Driver ID: <input type = "text" name = "driver_id"/>
    <input type = "submit" value = "Submit" />
  </form>
</body>
</html>

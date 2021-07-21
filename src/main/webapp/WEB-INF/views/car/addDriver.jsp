<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<form name="addDriver" method="post" action="${pageContext.request.contextPath}/cars/add">
  CarId: <input type="number" name="carId"/> <br/>
  DriverId: <input type="number" name="driverId"/> <br/>
  <input type="submit" value="add"/>
</form>
</body>
</html>

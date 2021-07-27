<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
   Driver id <input type="number" name="driver_id">
   Car id <input type="number" name="car_id">
   <button type="submit">Add</button>
</form>
</body>
</html>

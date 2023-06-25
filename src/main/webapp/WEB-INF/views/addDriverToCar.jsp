
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Add Driver To Car:</h1>
<form method="post" action="${pageContext.request.contextPath}/addDriverToCar">
  car id: <input type="text" name="car_id"><br>
  driver id: <input type="text" name="driver_id"><br>
  <button type="submit">Add</button>
</form>
</body>
</html>

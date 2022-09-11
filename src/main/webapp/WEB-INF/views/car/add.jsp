<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>TAXI SERVICE</title>
</head>
<body>
  <h3>Add car to DB</h3>

<form method="post" action="${pageContext.request.contextPath}/cars/add">
  Model <input type="text" name="model"><br>
  Manufacturer ID <input type="text" name="manufacturerId"><br>
  <button type="submit">Create</button>
</form>
  <td><a href="${pageContext.request.contextPath}/service"><- back to service menu</a></td>
</body>
</html>
